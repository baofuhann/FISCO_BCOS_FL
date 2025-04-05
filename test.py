from multiprocessing import Process
import time

def run_one_node(name):
    time.sleep(10)
    print('task <%s> is runing' %name)

def run_sponsor():
    time.sleep(15)
    print('task run_sponsor is runing')

if __name__ == "__main__" :
    process_pool = []
    for i in range(3):
        node_id = 'node_{}'.format(len(process_pool))
        p = Process(target=run_one_node, args=(node_id, ))
        p.start()
        process_pool.append(p)
        time.sleep(3)

    # 加入发起者的进行全局测试
    p = Process(target=run_sponsor)
    p.start()
    process_pool.append(p)

    for p in process_pool:
        print("33333")
        # p.join()
    print("end")