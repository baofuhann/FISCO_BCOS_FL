from __future__ import print_function, division
import os

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
import pandas as pd
import numpy as np
import random
import json
import tensorflow.compat.v1 as tf
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
from utils.file_storage import simpledic2csv

'''
代码功能：
main1.py是main.py的副本，现在对其进行结果输出功能开发
'''


# 隐藏Tensorflow的警告信息
tf.logging.set_verbosity(tf.logging.ERROR)
# 单纯的靠上面的语句，只能屏蔽掉waring，要想屏蔽掉info，还需要下面的支持
# 2 仅输出 ERROR 级别的日志信息
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
# 当前下载的为TensorflowV2版本，代码是TFV1版本，在 TensorFlow 2.0 环境中运行旧版 TensorFlow 1.x 的代码，需要下列语句

tf.disable_v2_behavior()
os.environ["CUDA_VISIBLE_DEVICES"] = ""

# 定义一个数组，来保存训练过程中的全局模型精度
global_accuracy = {}

test_local_result = {}
# 序列化和反序列化
def serialize(data):
    json_data = json.dumps(data)
    return json_data


# 将 JSON对象反序列化成Python对象
def deserialize(json_data):
    # json.loads方法用于将 JSON 字符串转换为 Python 对象
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


# 划分客户端数据集
CLIENT_NUM = 20
X_train, X_test, y_train, y_test = split_data("./data/datatraining.txt", CLIENT_NUM)
manager = Manager()

# 节点角色常量
ROLE_TRAINER = "trainer"  # 训练节点
ROLE_COMM = "comm"  # 委员会

# 轮询的时间间隔，单位秒
QUERY_INTERVAL = 10

# 最大的执行轮次
# MAX_EPOCH = 50 * CLIENT_NUM
MAX_EPOCH = 5

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
to_address = "0x0000000000000000000000000000000000005026"


# 写一个节点的工作流程
def run_one_node(node_id):
    """指定一个node id，并启动一个进程"""

    batch_size = 100
    learning_rate = 0.001
    # 将其设置为-1是因为还没有进行任何训练
    trained_epoch = -1
    node_index = int(node_id.split('_')[-1])  # 按照下划线进行字符串分割，获得最后一个索引

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
            # print("global epoch", epoch)
            model = deserialize(model)

            tf.reset_default_graph()
            # _train[node_index].shape返回值为(306, 5)，其中305为样本个数
            n_samples = X_train[node_index].shape[0]

            x = tf.placeholder(tf.float32, [None, n_features])
            y = tf.placeholder(tf.float32, [None, n_class])
            # ser_W 和 ser_b 分别为模型的权重矩阵和偏置向量
            ser_W, ser_b = model['ser_W'], model['ser_b']
            W = tf.Variable(ser_W)
            b = tf.Variable(ser_b)

            pred = tf.matmul(x, W) + b

            # 定义损失函数
            cost = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=pred, labels=y))

            # 梯度下降
            # 常见的优化器包括梯度下降、随机梯度下降、Adam 等。
            # optimizer = tf.train.AdamOptimizer(learning_rate)
            optimizer = tf.train.GradientDescentOptimizer(learning_rate)
            # 计算损失函数关于模型参数的梯度
            gradient = optimizer.compute_gradients(cost)
            # 将梯度应用到模型参数上，也就是根据梯度更新模型参数，
            train_op = optimizer.apply_gradients(gradient)

            # 对上面定义的变量进行初始化
            init = tf.global_variables_initializer()
            # tensorflow中对变量的操作都要在session中完成
            # 训练模型
            with tf.Session(config=tf.ConfigProto(device_count={'cpu': 0})) as sess:
                sess.run(init)

                avg_cost = 0
                total_batch = int(n_samples / batch_size)
                for i in range(total_batch):
                    # 其中c表示当前 batch 上的损失函数值
                    _, c = sess.run(
                        [train_op, cost],
                        feed_dict={
                            x: X_train[node_index][i * batch_size:(i + 1) * batch_size],
                            y: y_train[node_index][i * batch_size:(i + 1) * batch_size, :]
                        })
                    avg_cost += c / total_batch

                # 获取更新量
                val_W, val_b = sess.run([W, b])

            delta_W = (ser_W - val_W) / learning_rate
            delta_b = (ser_b - val_b) / learning_rate
            delta_model = {'ser_W': delta_W.tolist(), 'ser_b': delta_b.tolist()}
            meta = {'n_samples': n_samples, 'avg_cost': avg_cost}
            update_model = {'delta_model': delta_model, 'meta': meta}
            update_model = serialize(update_model)
            logger.info("{} epoch:{} avt_cost:{}".format(node_id, epoch, avg_cost))
            receipt = client.sendRawTransactionGetReceipt(to_address, contract_abi, "UploadLocalUpdate",
                                                          [update_model, epoch])
            logger.info("{} UploadLocalUpdate TXHash:{} BlockNum:{}".format(node_id, receipt["transactionHash"],
                                                                            receipt["blockNumber"]))
            '''
            nonlocal trained_epoch 表示在函数内部使用一个外层函数作用域中已经存在的变量trained_epoch,
            并将其标记为非局部变量
            通常情况下，在 Python 中如果要在函数内部使用外层函数作用域中的变量，可以使用闭包来实现。
            但是，如果需要在函数内部修改这个变量的值，就需要使用 nonlocal 关键字来声明这个变量是非局部变量。
            否则，Python 会认为这个变量是一个新的局部变量，并且会在函数内部创建一个同名的新变量，而不是修改外层函数作用域中的变量。
            '''

            nonlocal trained_epoch
            trained_epoch = epoch

        except Exception as e:
            client.finish()
            # traceback.print_exc()
            logger.exception("An error occurred: %s", str(e))

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
        with tf.Session(config=tf.ConfigProto(device_count={'cpu': 0})) as sess:
            sess.run(init)
            acc = accuracy.eval({x: X_train[node_index], y: y_train[node_index]})

        return acc

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
            logger.info("Committee {} begin scoring..".format(node_id))

            scores = {}

            for trainer_id, update in updates.items():
                update = deserialize(update)
                delta_model, meta = update['delta_model'], update['meta']
                ser_W = [a - learning_rate * b for a, b in
                         zip(np.array(model['ser_W']), np.array(delta_model['ser_W']))]
                ser_b = [a - learning_rate * b for a, b in
                         zip(np.array(model['ser_b']), np.array(delta_model['ser_b']))]
                local_acc = local_testing(np.array(ser_W).astype(np.float32), np.array(ser_b).astype(np.float32))

                scores[trainer_id] = np.asscalar(local_acc)
            receipt = client.sendRawTransactionGetReceipt(to_address, contract_abi, "UploadScores",
                                                          [epoch, serialize(scores)])

            logger.info("Score_Res: {}".format(scores))

            nonlocal trained_epoch
            trained_epoch = epoch

        except Exception as e:
            client.finish()
            traceback.print_exc()

        return scores

    def wait():
        time.sleep(random.uniform(QUERY_INTERVAL, QUERY_INTERVAL * 3))
        return

    def main_loop():

        # 注册节点
        try:
            receipt = client.sendRawTransactionGetReceipt(to_address, contract_abi, "RegisterNode", [])
            logger.info("{} registered successfully".format(node_id))

            while True:

                (role, global_epoch) = client.call(to_address, contract_abi, "QueryState")
                # print("global_epoch",global_epoch)
                # print("{} role: {}, local e: {}, up_c: {}, sc_c: {}"\
                #     .format(node_id, role, trained_epoch,
                #             update_count, score_count))
                logger.info("{} role: {}, local e: {}".format(node_id, role, trained_epoch))

                # 任务结束，已经达到了设定的训练轮数
                if global_epoch >= MAX_EPOCH:
                    break

                if global_epoch < trained_epoch:
                    print("global_epoch比trained_epoch大:", global_epoch, trained_epoch)
                    # 当前的节点训练速度过快，比全局的超过了global epoch，先等会
                    # print("{} skip.".format(node_id))
                    logger.info("{} skip.".format(node_id))
                    wait()
                    continue

                if role == ROLE_TRAINER:
                    local_training()

                '''
                收集Committee的对于局部模型的评分结果（也就是精度）意义不大，主要是以下几个方面：
                1、每个committee对于其他人的局部模型，由于committee本地的测试集不一样，导致某一个局部模型，
                   可能每个committee对其测试的精度结果不一样
                2、一个节点在训练过程中，并不是全程都是committee，比如node_1，epoch是committee，epoch2就不是了，那么将他的结果作为记录
                  搜集的时候，就会缺少一些epoch，数据不全
                因此如果要收集的话，可以从以下几个方面来收集：
                1、节点自身对于训练出来的局部模型的测试结果，可以作为收敛的参考
                2、发起人对于全局模型的测试
                '''
                if role == ROLE_COMM:
                    acc_result = local_scoring()
                    print("epoch:{}  Acc :{}".format(trained_epoch, acc_result))

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
    # 初始化bcos客户端
    try:
        client = BcosClient()
    except Exception as e:
        client.finish()
        traceback.print_exc()

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
        time.sleep(random.uniform(QUERY_INTERVAL, QUERY_INTERVAL * 3))
        return

    def test():
        # 初始化bcos客户端
        try:

            while True:
                model, epoch = client.call(to_address, contract_abi, "QueryGlobalModel")
                model = deserialize(model)
                ser_W, ser_b = model['ser_W'], model['ser_b']

                nonlocal test_epoch
                # if epoch > test_epoch :
                #     test_acc = global_testing(ser_W, ser_b)
                #     logger.info("Test Epoch: {:03}, test_acc: {:.4f}"\
                #         .format(test_epoch, test_acc))
                #     test_epoch = epoch

                test_acc = global_testing(ser_W, ser_b)
                logger.info("Test Epoch: {:03}, test_acc: {:.4f}" \
                            .format(test_epoch, test_acc))
                test_epoch = epoch
                strKey = "epoch_{}".format(test_epoch)
                global_accuracy[strKey] = test_acc
                # wait()
                time.sleep(10)
                print("global acc ",global_accuracy)
                # 每完成一次，就会对全局模型进行一次测试
                # 这个地方可以加跳出循环的条件
        except Exception as e:
            client.finish()
            traceback.print_exc()
        # 关闭客户端

    test()
    client.finish()


# 发起人对于局部模型的测试
def run_local_sponsor():

    learning_rate = 0.001
    local_test_epoch = 0
    # 初始化bcos客户端
    try:
        client = BcosClient()
    except Exception as e:
        client.finish()
        traceback.print_exc()

    # 跑测试集
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

        with tf.Session() as sess:
            sess.run(init)
            acc = accuracy.eval({x: X_test, y: y_test})

        return acc

    def local_test():
        # 定义一个temp列表，用来存储已经测试过的epoch，防止查询到后重新测试
        temp_epoch = []

        try:
            while True:
                res = client.call(to_address, contract_abi, "QueryAllUpdates")
                updates = res[0]

                nonlocal local_test_epoch

                if local_test_epoch == MAX_EPOCH -1:
                    print("测试完成")

                    break


                if len(updates) == 0:
                    time.sleep(8)
                    continue

                updates = deserialize(updates)

                model, epoch = client.call(to_address, contract_abi, "QueryGlobalModel")

                if local_test_epoch == epoch:
                    time.sleep(3)
                    continue
                # 表示之前已经查询过了
                if local_test_epoch in temp_epoch:
                    time.sleep(3)
                    continue
                model = deserialize(model)

                acc = {}
                for trainer_id, update in updates.items():
                    update = deserialize(update)
                    delta_model, meta = update['delta_model'], update['meta']
                    ser_W = [a - learning_rate * b for a, b in
                             zip(np.array(model['ser_W']), np.array(delta_model['ser_W']))]
                    ser_b = [a - learning_rate * b for a, b in
                             zip(np.array(model['ser_b']), np.array(delta_model['ser_b']))]
                    acc[trainer_id] = np.asscalar(
                        local_testing(np.array(ser_W).astype(np.float32), np.array(ser_b).astype(np.float32)))
                print("epoch {} Test Acc {}".format(epoch,acc))

                test_local_result["epoch_{}".format(epoch)]=acc
                print("test_local_result:",test_local_result)
                simpledic2csv(test_local_result, "test_result.csv")
                local_test_epoch = epoch
                temp_epoch.append(epoch)
        except Exception as e:
            client.finish()
            traceback.print_exc()
        return

    local_test()
    # 关闭客户端
    client.finish()

if __name__ == "__main__":
    process_pool = []
    for i in range(CLIENT_NUM):
        node_id = 'node_{}'.format(len(process_pool))
        p = Process(target=run_one_node, args=(node_id,))
        p.start()
        process_pool.append(p)
        time.sleep(3)

    # 加入发起者的进行全局测试
    # p = Process(target=run_sponsor)
    p = Process(target=run_local_sponsor)
    p.start()
    process_pool.append(p)

    for p in process_pool:
        p.join()
    # logger.info("Gradients shape: ({}, {})".format(len(param_diff), param_diff[0].shape[0]))