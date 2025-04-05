import sys
import os
from client_config import client_config
from client.bcosclient import BcosClient
from client.datatype_parser import DatatypeParser
from client.contractnote import ContractNote
import copy
import logging

logging.getLogger().disabled = True


def get_client(group_id: int) -> BcosClient:
    config = copy.deepcopy(client_config)
    config.groupid = group_id
    return BcosClient(config)

def load_contract_files(contract_name):
    abi_path = f"contracts/{contract_name}.abi"
    bin_path = f"contracts/{contract_name}.bin"

    parser = DatatypeParser()
    parser.load_abi_file(abi_path)
    contract_abi = parser.contract_abi

    with open(bin_path, 'r') as f:
        contract_bin = f.read()

    return contract_abi, contract_bin, parser

# ---------------- Group1 ----------------
print("\n======= Group1 执行 =======")
client1 = get_client(1)
contract_name = "Group1"
contract_abi_1, contract_bin_1, data_parser_1 = load_contract_files(contract_name)

#  ---------------- 部署合约 ----------------
print("\n>>>>>>>>>>>>>>>>>>>>部署合约<<<<<<<<<<<<<<<<<<<<<")
res1 = client1.deploy(contract_bin_1)
addr1 = res1["contractAddress"]
print("Group1 合约地址:", addr1)
# 调用 set()
memo = "tx:"+res1["transactionHash"]
print("\n>>>>>>>>>>>>>>>>>>>>调用合约中的set函数，发送交易<<<<<<<<<<<<<<<<<<<<<")
to_address = addr1
receipt = client1.sendRawTransactionGetReceipt(to_address,contract_abi_1,"set",["Updated by Group1"])
print("receipt:",receipt)

#解析receipt里的log
print("\n>>>>>>>>>>>>>>>>>>>>交易内容解析<<<<<<<<<<<<<<<<<<<<<")
txhash = receipt['transactionHash']
print("transaction hash: " ,txhash)
logresult = data_parser_1.parse_event_logs(receipt["logs"])
i = 0
for log in logresult:
    if 'eventname' in log:
        i = i + 1
        print("{}): log name: {} , data: {}".format(i,log['eventname'],log['eventdata']))
#获取对应的交易数据，解析出调用方法名和参数

txresponse = client1.getTransactionByHash(txhash)
inputresult = data_parser_1.parse_transaction_input(txresponse['input'])
print("transaction input parse:",txhash)
print(inputresult)

#解析该交易在receipt里输出的output,即交易调用的方法的return值
outputresult  = data_parser_1.parse_receipt_output(inputresult['name'], receipt['output'])
print("receipt output :",outputresult)

print("\n>>>>>>>>>>>>>>>>>>>>调用合约查询函数<<<<<<<<<<<<<<<<<<<<<")
res = client1.call(to_address, contract_abi_1, "get")
print("Current SM name:", res[0])
client1.finish()

# ---------------- Group2 ----------------
print("\n======= Group2 执行 =======")
client2 = get_client(2)
contract_name2 = "Group2"
contract_abi_2, contract_bin_2, data_parser_2 = load_contract_files(contract_name2)

#  ---------------- 部署合约 ----------------
print("\n>>>>>>>>>>>>>>>>>>>>部署合约<<<<<<<<<<<<<<<<<<<<<")
res2 = client2.deploy(contract_bin_2)
addr2 = res2["contractAddress"]
print("Group1 合约地址:", addr2)
# 调用 set()
memo2 = "tx:"+res2["transactionHash"]
print("\n>>>>>>>>>>>>>>>>>>>>调用合约中的set函数，发送交易<<<<<<<<<<<<<<<<<<<<<")
to_address2 = addr2
receipt2 = client2.sendRawTransactionGetReceipt(to_address,contract_abi_2,"set",["Updated by Group2"])
print("receipt:",receipt2)

#解析receipt里的log
print("\n>>>>>>>>>>>>>>>>>>>>交易内容解析<<<<<<<<<<<<<<<<<<<<<")
txhash2 = receipt2['transactionHash']
print("transaction hash: " ,txhash2)
logresult2 = data_parser_2.parse_event_logs(receipt2["logs"])
i = 0
for log in logresult2:
    if 'eventname' in log:
        i = i + 1
        print("{}): log name: {} , data: {}".format(i,log['eventname'],log['eventdata']))
#获取对应的交易数据，解析出调用方法名和参数

txresponse2 = client2.getTransactionByHash(txhash2)
inputresult2 = data_parser_2.parse_transaction_input(txresponse2['input'])
print("transaction input parse:",txhash2)
print(inputresult2)

#解析该交易在receipt里输出的output,即交易调用的方法的return值
outputresult2  = data_parser_2.parse_receipt_output(inputresult2['name'], receipt2['output'])
print("receipt output :",outputresult2)

print("\n>>>>>>>>>>>>>>>>>>>>调用合约查询函数<<<<<<<<<<<<<<<<<<<<<")
res2 = client2.call(to_address2, contract_abi_2, "get")
print("Current SM name:", res2[0])
client2.finish()

