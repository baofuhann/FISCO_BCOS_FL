import os
import copy
import logging
from client_config import client_config
from client.bcosclient import BcosClient
from client.datatype_parser import DatatypeParser

logging.getLogger().disabled = True

# ============ 工具函数 ============

def get_client(group_id: int) -> BcosClient:
    config = copy.deepcopy(client_config)
    config.groupid = group_id
    return BcosClient(config)

def load_contract_files(contract_name):
    abi_path = f"contracts/{contract_name}.abi"
    bin_path = f"contracts/{contract_name}.bin"
    parser = DatatypeParser()
    parser.load_abi_file(abi_path)
    with open(bin_path, 'r') as f:
        contract_bin = f.read()
    return parser.contract_abi, contract_bin, parser

def print_deploy_info(res, group):
    print(f"\n======= [GROUP{group}] 合约部署 =======")
    print("合约地址：       ", res["contractAddress"])
    print("交易哈希：       ", res["transactionHash"])
    print("区块号：         ", int(res["blockNumber"], 16))

def print_tx_info(receipt, parser, txhash, method, args, group):
    print(f"\n======= [GROUP{group}] 执行 {method}{tuple(args)} =======")
    print("调用方法：       ", method)
    print("输入参数：       ", args)
    print("交易哈希：       ", txhash)
    print("状态码：         ", receipt["status"])
    logs = parser.parse_event_logs(receipt["logs"])
    for log in logs:
        if 'eventname' in log:
            print(f"事件日志：       {log['eventname']} =>", log['eventdata'])

def print_call_result(result, group):
    print(f"\n======= [GROUP{group}] 调用 get() =======")
    print("返回值：         ", result[0])

# ============ Group1 ============

client1 = get_client(1)
abi1, bin1, parser1 = load_contract_files("Group1")

res1 = client1.deploy(bin1)
addr1 = res1["contractAddress"]
print_deploy_info(res1, group=1)

receipt1 = client1.sendRawTransactionGetReceipt(addr1, abi1, "set", [5, 10])
txhash1 = receipt1["transactionHash"]
print_tx_info(receipt1, parser1, txhash1, "set", [5, 10], group=1)

val1 = client1.call(addr1, abi1, "get")
print_call_result(val1, group=1)
client1.finish()

# ============ Group2 ============

client2 = get_client(2)
abi2, bin2, parser2 = load_contract_files("Group2")

res2 = client2.deploy(bin2)
addr2 = res2["contractAddress"]
print_deploy_info(res2, group=2)

receipt2 = client2.sendRawTransactionGetReceipt(addr2, abi2, "set", [3, 7])
txhash2 = receipt2["transactionHash"]
print_tx_info(receipt2, parser2, txhash2, "set", [3, 7], group=2)

val2 = client2.call(addr2, abi2, "get")
print_call_result(val2, group=2)
client2.finish()

# ============ Group3 ============

client3 = get_client(3)
abi3, bin3, parser3 = load_contract_files("Group3")

res3 = client3.deploy(bin3)
addr3 = res3["contractAddress"]
print_deploy_info(res3, group=3)

receipt3 = client3.sendRawTransactionGetReceipt(addr3, abi3, "set", [val1[0], val2[0]])
txhash3 = receipt3["transactionHash"]
print_tx_info(receipt3, parser3, txhash3, "set", [val1[0], val2[0]], group=3)

val3 = client3.call(addr3, abi3, "get")
print_call_result(val3, group=3)
client3.finish()
