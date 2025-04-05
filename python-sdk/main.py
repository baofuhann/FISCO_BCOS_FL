from __future__ import print_function, division
import tensorflow.compat.v1 as tf
import pandas as pd
import numpy as np
import random
import json
import os
import time
import traceback
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from multiprocessing import Manager, Process
from client.bcosclient import BcosClient
from client.datatype_parser import DatatypeParser
from client.common.compiler import Compiler
from client.bcoserror import BcosException, BcosError
from client_config import client_config
from loguru import logger


# 隐藏Tensorflow的警告信息
tf.logging.set_verbosity(tf.logging.ERROR)
# 单纯的靠上面的语句，只能屏蔽掉waring，要想屏蔽掉info，还需要下面的支持
# 2 仅输出 ERROR 级别的日志信息
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
# 当前下载的为TensorflowV2版本，代码是TFV1版本，在 TensorFlow 2.0 环境中运行旧版 TensorFlow 1.x 的代码，需要下列语句

tf.disable_v2_behavior()
os.environ["CUDA_VISIBLE_DEVICES"] = ""

# 序列化和反序列化
def serialize(data):
    json_data = json.dumps(data)
    return json_data


def deserialize(json_data):
    data = json.loads(json_data)
    return data

# 切分数据集
def split_data(path, clients_num):
    # 读取数据
    data = pd.read_csv(path)
    # 拆分数据
    X_train, X_test, y_train, y_test = train_test_split(
        data[["Temperature", "Humidity", "Light", "CO2", "HumidityRatio"]].values,
        data["Occupancy"].values.reshape(-1, 1),
        random_state=42)
    
    # one-hot 编码
    y_train = np.concatenate([1 - y_train, y_train], 1)
    y_test = np.concatenate([1 - y_test, y_test], 1)
    
    # 训练集划分给多个client
    X_train = np.array_split(X_train, clients_num)
    y_train = np.array_split(y_train, clients_num)
    return X_train, X_test, y_train, y_test

# 定义客户端数量
CLIENT_NUM = 20
# 划分客户端数据集
X_train, X_test, y_train, y_test = split_data("./data/datatraining.txt", CLIENT_NUM)

manager = Manager()

# 定义角色类型
ROLE_TRAINER = "trainer" # 训练节点
ROLE_COMM = "comm" # 委员会

# 轮询的时间间隔，单位秒
QUERY_INTERVAL = 10

# 最大的执行轮次
# MAX_EPOCH = 50 * CLIENT_NUM
MAX_EPOCH = 50

# 设置模型
n_features = 5
n_class = 2

# 从文件加载abi定义
if os.path.isfile(client_config.solc_path) or os.path.isfile(client_config.solcjs_path):
    Compiler.compile_file("contracts/CommitteePrecompiled.sol")
abi_file = "contracts/CommitteePrecompiled.abi"
data_parser = DatatypeParser()
data_parser.load_abi_file(abi_file)
contract_abi = data_parser.contract_abi

# 定义合约地址
to_address = "0x0000000000000000000000000000000000005027"


# 写一个节点的工作流程
def run_one_node(node_id):
    """指定一个node id，并启动一个进程"""

    batch_size = 100
    learning_rate = 0.001
    trained_epoch = -1
    node_index = int(node_id.split('_')[-1])
    
    # 初始化bcos客户端
    try:
        client = BcosClient()
        # 为了更好模拟真实多个客户端场景，给不同的客户端分配不同的地址
        client.set_from_account_signer(node_id)

        logger.info("{} initializing....".format(node_id))
    except Exception as e:
        client.finish()
        traceback.print_exc()
    

    def local_training():
        logger.info("{} begin training..".format(node_id))
        try:
            model, epoch = client.call(to_address, contract_abi, "QueryGlobalModel")
            model = deserialize(model)

            # 使用TensorFlow框架重置图（tf.reset_default_graph()），这是为了确保每次运行这段代码时，都是在一个干净的环境中开始，
            # 避免因前一次运行留下的图结构或变量干扰本次运行。
            tf.reset_default_graph()

            n_samples = X_train[node_index].shape[0]

            x = tf.placeholder(tf.float32, [None, n_features])
            y = tf.placeholder(tf.float32, [None, n_class])

            # 全局模型的权重和偏置参数，构成了全局模型的初始状态
            ser_W, ser_b = model['ser_W'], model['ser_b']
            W = tf.Variable(ser_W)
            b = tf.Variable(ser_b)

            # 模型的预测（pred），这里实现了一个简单的线性模型
            pred = tf.matmul(x, W) + b

            # 定义损失函数
            cost = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=pred, labels=y))

            # 梯度下降
            # optimizer = tf.train.AdamOptimizer(learning_rate)
            optimizer = tf.train.GradientDescentOptimizer(learning_rate)

            gradient = optimizer.compute_gradients(cost)
            train_op = optimizer.apply_gradients(gradient)

            # 初始化所有变量
            init = tf.global_variables_initializer()

            # 训练模型
            with tf.Session(config=tf.ConfigProto(device_count={'cpu':0})) as sess:
                sess.run(init)

                avg_cost = 0
                total_batch = int(n_samples / batch_size)
                for i in range(total_batch):
                    _, c = sess.run(
                        [train_op, cost],
                        feed_dict={
                            x: X_train[node_index][i * batch_size:(i + 1) * batch_size],
                            y: y_train[node_index][i * batch_size:(i + 1) * batch_size, :]
                        })
                    avg_cost += c / total_batch

                # 获取更新量
                val_W, val_b = sess.run([W, b])

            delta_W = (ser_W-val_W)/learning_rate
            delta_b = (ser_b-val_b)/learning_rate
            delta_model = {'ser_W':delta_W.tolist(), 'ser_b':delta_b.tolist()}
            meta = {'n_samples':n_samples, 'avg_cost':avg_cost}
            update_model = {'delta_model':delta_model, 'meta':meta}
            update_model = serialize(update_model)

            receipt = client.sendRawTransactionGetReceipt(to_address, contract_abi, "UploadLocalUpdate", [update_model, epoch])

            # 引用的是外层函数作用域中的trained_epoch变量
            nonlocal trained_epoch
            trained_epoch = epoch
        
        except Exception as e:
            client.finish()
            traceback.print_exc()

        return
    
    
    def local_testing(ser_W, ser_b):
        tf.reset_default_graph()

        x = tf.placeholder(tf.float32, [None, n_features])
        y = tf.placeholder(tf.float32, [None, n_class])

        W = tf.Variable(ser_W)
        b = tf.Variable(ser_b)
        pred = tf.matmul(x, W) + b

        correct_prediction = tf.equal(tf.argmax(pred, 1), tf.argmax(y, 1))
        accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

        # 初始化所有变量
        init = tf.global_variables_initializer()

        # 训练模型
        with tf.Session(config=tf.ConfigProto(device_count={'cpu':0})) as sess:
            sess.run(init)
            acc = accuracy.eval({x: X_train[node_index], y: y_train[node_index]})

        return acc
    
    # 作为委员的节点，为每个训练者（trainer）的模型更新打分
    def local_scoring():
        try:
            res = client.call(to_address, contract_abi, "QueryAllUpdates")
            updates = res[0]

            # 如果获取不了任何更新信息，则认为还不能开始评分
            if len(updates) == 0:
                return

            updates = deserialize(updates)

            model, epoch = client.call(to_address, contract_abi, "QueryGlobalModel")
            model = deserialize(model)
            
            logger.info("{} begin scoring..".format(node_id))
            scores = {}
            for trainer_id, update in updates.items():
                update = deserialize(update)
                delta_model, meta = update['delta_model'], update['meta']
                ser_W = [a - learning_rate * b for a, b in zip(np.array(model['ser_W']), np.array(delta_model['ser_W']))]
                ser_b = [a - learning_rate * b for a, b in zip(np.array(model['ser_b']), np.array(delta_model['ser_b']))]
                scores[trainer_id] = np.asscalar(local_testing(np.array(ser_W).astype(np.float32), np.array(ser_b).astype(np.float32)))

            # 上传训练者的分数
            # 系统中的其他部分（如委员会）就可以根据这些分数来决定哪些更新应该被整合到全局模型中。
            receipt = client.sendRawTransactionGetReceipt(to_address, contract_abi, "UploadScores", [epoch, serialize(scores)])
            # logger.info(f"Scores: {serialize(scores)}")

            nonlocal trained_epoch
            trained_epoch = epoch

        except Exception as e:
            client.finish()
            traceback.print_exc()
        
        return
    
    # 这意味着暂停时间是QUERY_INTERVAL和QUERY_INTERVAL*3之间的一个浮点数秒
    def wait():
        time.sleep(random.uniform(QUERY_INTERVAL, QUERY_INTERVAL*3))
        return
    
    
    def main_loop():

        # 注册节点
        try:
            receipt = client.sendRawTransactionGetReceipt(to_address, contract_abi, "RegisterNode", [])
            logger.info("{} registered successfully".format(node_id))

            while True:

                # 查询当前节点的角色（训练节点或委员会节点）和全局轮次（global_epoch）
                (role, global_epoch) =  client.call(to_address, contract_abi, "QueryState")

                # print("{} role: {}, local e: {}, up_c: {}, sc_c: {}"\
                #     .format(node_id, role, trained_epoch,
                #             update_count, score_count))
            
                if global_epoch > MAX_EPOCH:
                    break

                # 全局训练轮次为5，节点为6，意思节点已经超前了，所以不需要在继续训练，等着结果就行
                if global_epoch <= trained_epoch:
                    # print("{} skip.".format(node_id))
                    wait()
                    continue
                
                if role == ROLE_TRAINER :
                    local_training()
                
                if role == ROLE_COMM :
                    local_scoring()
                
                wait()

        except Exception as e:
            client.finish()
            traceback.print_exc()
        
        return
    
    main_loop()

    # 关闭客户端
    client.finish()


# 发起人的全局测试
def run_sponsor():

    test_epoch = 0

    # 跑测试集
    def global_testing(ser_W, ser_b):
        tf.reset_default_graph()

        x = tf.placeholder(tf.float32, [None, n_features])
        y = tf.placeholder(tf.float32, [None, n_class])

        W = tf.Variable(ser_W)
        b = tf.Variable(ser_b)
        pred = tf.matmul(x, W) + b

        correct_prediction = tf.equal(tf.argmax(pred, 1), tf.argmax(y, 1))
        accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

        # 初始化所有变量
        init = tf.global_variables_initializer()

        # 训练模型
        with tf.Session() as sess:
            sess.run(init)
            acc = accuracy.eval({x: X_test, y: y_test})

        return acc
    

    def wait():
        time.sleep(random.uniform(QUERY_INTERVAL, QUERY_INTERVAL*3))
        return


    def global_test():
        # 初始化bcos客户端
        try:
            client = BcosClient()
            
            while True :
                model, epoch = client.call(to_address, contract_abi, "QueryGlobalModel")
                model = deserialize(model)
                ser_W, ser_b = model['ser_W'], model['ser_b']
                
                nonlocal test_epoch
                if test_epoch == MAX_EPOCH:
                    # print("Reached MAX_EPOCH, exiting test loop.")
                    break  # 跳出循环

                if epoch > test_epoch :
                    test_acc = global_testing(ser_W, ser_b)
                    logger.info("Epoch: {:03}, Test Acc: {:.4f}"\
                        .format(test_epoch, test_acc))
                    # print("全局的Epoch: {:03}, 测试的Epoch: {:03}" \
                    #       .format(epoch, test_epoch))
                    test_epoch = epoch

                wait()

        except Exception as e:
            client.finish()
            traceback.print_exc()

    global_test()


if __name__ == "__main__" :
    # 模拟联邦学习环境中多个参与者和一个全局测试发起者（sponsor）的行为

    process_pool = []
    for i in range(CLIENT_NUM):
        node_id = 'node_{}'.format(len(process_pool))
        p = Process(target=run_one_node, args=(node_id, ))
        p.start()
        process_pool.append(p)
        time.sleep(3)

    # 加入发起者的进行全局测试
    p = Process(target=run_sponsor)
    p.start()
    process_pool.append(p)

    # 用于等待所有在process_pool列表中的进程结束
    # 如果没有这段代码，主程序并不会等待各个进程执行，而是直接执行完了。
    for p in process_pool:
        # p.join()用于阻塞调用它的程序（在这种情况下是主进程），直到p进程结束。如果p进程已经结束，join()方法会立即返回。
        p.join()

    # print("Reached MAX_EPOCH, exiting FL loop.")