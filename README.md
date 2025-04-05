
## **融合主从群组架构的分层区块链联邦学习框架设计**

## 系统版本号

- MacOs 11.3.1
- **FISCO-BCOS == 2.x**

- python == 3.6.3、3.7.x

- tensorflow >= 2.0.0

- cmake >= 3.10

- pandas == 1.2.3

- numpy == 1.19.2

- matplotlib == 3.3.4

- sklearn == 0.24.1

## 项目部署

### **1.1 下载项目源码**

在`/Users/hanallen/go/src/fisco`下存放了所有与fisco相关的代码，因此将FISCO源码下载到该路径下

```bash
cd /Users/hanallen/go/src/fisco
git clone https://github.com/baofuhann/FISCO_BCOS_FL.git
```

### **1.2 与合约相关的代码**
`libprecompiled/extension` 目录是 FISCO BCOS 区块链平台中的一个预编译合约扩展目录，用于存放开发人员自定义的预编译合约。

```shell
├── extension
   ├── CMakeLists.txt
   ├── CommitteePrecompiled.cpp
   ├── CommitteePrecompiled.h
   ├── .....
```

###  **1.3 分配并注册合约地址**

通过修改 `FISCO_BCOS_FL/cmake/templates/UserPrecompiled.h.in`文件，在下面的函`registerUserPrecompiled`中注册`CommitteePrecompiled` 合约的地址，该地址可以自行定义，如果在该处不为合约注册地址，后续则无法使用

```shell
void dev::blockverifier::ExecutiveContextFactory::registerUserPrecompiled(dev::blockverifier::ExecutiveContext::Ptr context)
{
    // Address should in [0x5001,0xffff]
    context->setAddress2Precompiled(
        Address(0x5006), std::make_shared<dev::precompiled::CommitteePrecompiled>());
}
```

## **源码编译**

用户可以自由选择以下任一方式获取可执行程序`fisco bcos`本文选用的是源码编译的方式

- 官方提供的静态链接的预编译文件（build_chain.sh）

- 官方提供docker镜像

- 源码编译获取可执行程序

### **2.1 安装依赖**

```shell
# 最新homebrew默认下载的为openssl@3，需要指定版本openssl@1.1下载
brew install openssl@1.1 git flex bison gmp
```

### **2.2 建立构建目录**

在项目源代码目录下创建一个新的子目录`build`（通常称为“构建目录”），并通过cmake指令在其中生成 `Makefile 文件`，用于编译和构建项目。

```shell
cd /Users/hanallen/go/src/fisco/FISCO_BCOS_FL
mkdir -p build && cd build
```

### **2.3 编译**

执行`cmake指令`，CMake 将根据源代码目录中的 `CMakeLists.txt` 配置文件，在`build目录`中生成 `Makefile 文件`。

```shell
cmake ..
```

接下来在`build目录`中，执行 `make` 命令，使用生成的` Makefile 文件`进行编译和构建，编译完成后在` ./build/bin `目录生成区块链运行所需的可执行程序` fisco-bcos`

```shell
# -j4或者-j2 选项用于指定并行编译的进程数，根据机器性能自行选用
make -j4
```

得到如下输出

```shell
(base) hanallen: build $ make -j4

------------------------------------------------------------------------
-- Configuring FISCO-BCOS 2.9.1
------------------------------------------------------------------------
-- CMake              Cmake version and location   3.22.0 (/usr/local/Cellar/cmake/3.22.0/bin/cmake)
-- Compiler           C++ compiler version         AppleClang 12.0.5.12050022
-- CMAKE_BUILD_TYPE   Build type                   RelWithDebInfo
-- TARGET_PLATFORM    Target platform              Darwin x86_64
-- BUILD_STATIC       Build static                 OFF
-- USE_HSM_SDF        Build SDF HSM                OFF
-- DEMO               Build demos                  OFF
-- TOOL               Build tools                  OFF
-- COVERAGE           Build code coverage          OFF
-- TESTS              Build tests                  OFF
-- APPLE              Apple Machine                1
-- ARCH_NATIVE        Enable native code           OFF
-- DEBUG                                           OFF
-- PROF                                            OFF
------------------------------------------------------------------------

CompilerSettings: USE_LD_GOLD
-- libssl include  : /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tassl/include
-- libssl libraries: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tassl/libssl.a;/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tassl/libcrypto.a;dl
-- Using the multi-header code from /Users/hanallen/go/src/fisco/FISCO-BCOS/libnlohmann_json/include/
-- Configuring done
-- Generating done
-- Build files have been written to: /Users/hanallen/go/src/fisco/FISCO-BCOS/build
[  2%] Built target tbb
[  4%] Built target snappy
[  7%] Built target leveldb
[  9%] Built target rocksdb
[  9%] Built target BuildInfo.h
[ 11%] Built target mhd
[ 13%] Built target cryptopp
[ 15%] Built target secp256k1
[ 17%] Built target jsoncpp
[ 19%] Built target tassl
[ 21%] Built target mysqlclient
[ 26%] Built target mpir
[ 26%] Built target gperftools
[ 30%] Built target evmc
[ 30%] Built target paillier
[ 34%] Built target evmone
[ 34%] Built target libvrf
[ 36%] Built target GroupSigLib
[ 40%] Built target jsonrpccpp
[ 40%] Built target boost
[ 44%] Built target libzdb
[ 44%] Built target libff
Consolidate compiler generated dependencies of target devcore
[ 49%] Built target devcore
Consolidate compiler generated dependencies of target stat
Consolidate compiler generated dependencies of target devcrypto
[ 50%] Built target stat
Consolidate compiler generated dependencies of target flowlimit
[ 50%] Built target flowlimit
[ 54%] Built target devcrypto
Consolidate compiler generated dependencies of target network
Consolidate compiler generated dependencies of target ethcore
[ 55%] Built target network
Consolidate compiler generated dependencies of target p2p
[ 59%] Built target ethcore
Consolidate compiler generated dependencies of target eventfilter
[ 61%] Built target p2p
[ 62%] Built target eventfilter
Consolidate compiler generated dependencies of target txpool
Consolidate compiler generated dependencies of target blockverifier
[ 64%] Built target txpool
[ 66%] Built target blockverifier
Consolidate compiler generated dependencies of target executivecontext
[ 68%] Built target executivecontext
Consolidate compiler generated dependencies of target precompiled
[ 76%] Built target precompiled
Consolidate compiler generated dependencies of target storage
[ 81%] Built target storage
Consolidate compiler generated dependencies of target storagestate
Consolidate compiler generated dependencies of target security
[ 82%] Built target storagestate
Consolidate compiler generated dependencies of target blockchain
[ 83%] Built target security
Consolidate compiler generated dependencies of target mptstate
[ 83%] Built target blockchain
Consolidate compiler generated dependencies of target sync
[ 86%] Built target mptstate
[ 89%] Built target sync
Consolidate compiler generated dependencies of target consensus
[ 93%] Built target consensus
Consolidate compiler generated dependencies of target ledger
[ 94%] Built target ledger
Consolidate compiler generated dependencies of target initializer
[ 94%] Building CXX object libinitializer/CMakeFiles/initializer.dir/GlobalConfigureInitializer.cpp.o
[ 94%] Linking CXX static library libinitializer.a
[ 96%] Built target initializer
Consolidate compiler generated dependencies of target rpc
[ 98%] Built target rpc
Consolidate compiler generated dependencies of target channelserver
[ 99%] Built target channelserver
Consolidate compiler generated dependencies of target fisco-bcos
[ 99%] Building CXX object fisco-bcos/main/CMakeFiles/fisco-bcos.dir/main.cpp.o
[100%] Linking CXX executable ../../bin/fisco-bcos
ld: warning: direct access in function 'dev::ChannelRPCServer::OnRpcRequest(std::__1::shared_ptr<dev::channel::ChannelSession>, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, void*)' from file '../../libchannelserver/libchannelserver.a(ChannelRPCServer.cpp.o)' to global weak symbol 'typeinfo for jsonrpc::IClientConnectionHandler' from file '../../../deps/lib/libjsonrpccpp-server.a(abstractprotocolhandler.cpp.o)' means the weak symbol cannot be overridden at runtime. This was likely caused by different translation units being compiled with different visibility settings.
ld: warning: direct access in function 'boost::program_options::option_description::set_names(char const*)' from file '../../../deps/src/boost/stage/lib/libboost_program_options.a(options_description.o)' to global weak symbol 'std::__1::__cxx03_bool::__true_value()' from file '../../../deps/lib/libjsonrpccpp-common.a(specificationparser.cpp.o)' means the weak symbol cannot be overridden at runtime. This was likely caused by different translation units being compiled with different visibility settings.
ld: warning: direct access in function 'boost::cpp_regex_traits<char>::toi(char const*&, char const*, int) const' from file '../../../deps/src/boost/stage/lib/libboost_regex.a(instances.o)' to global weak symbol 'std::__1::__cxx03_bool::__true_value()' from file '../../../deps/lib/libjsonrpccpp-common.a(specificationparser.cpp.o)' means the weak symbol cannot be overridden at runtime. This was likely caused by different translation units being compiled with different visibility settings.
ld: warning: direct access in function 'CryptoPP::operator>>(std::__1::basic_istream<char, std::__1::char_traits<char> >&, CryptoPP::Integer&)' from file '../../../deps/lib/libcryptopp.a(integer.cpp.o)' to global weak symbol 'std::__1::__cxx03_bool::__true_value()' from file '../../../deps/lib/libjsonrpccpp-common.a(specificationparser.cpp.o)' means the weak symbol cannot be overridden at runtime. This was likely caused by different translation units being compiled with different visibility settings.
[100%] Built target fisco-bcos
```

> - 编译问题参考链接：https://fisco-bcos-documentation.readthedocs.io/zh_CN/latest/docs/faq/compile.html
> - 如果因为网络问题导致长时间无法下载依赖库，请尝试从 https://gitee.com/FISCO-BCOS/LargeFiles/tree/master/libs 下载，放在<working_dir>/FISCO-BCOS/deps/src/

## 搭建多群组多节点联盟链

#### 3.1. 安装依赖

```shell
sudo apt install -y openssl curl
```

在 ip 为127.0.0.1下建立4个节点的区块链网络，每个节点后台运行fisco-bcos可执行程序，每个节点占用三个端口，节点的p2p，channel，jsonrpc起始端口分别为：30300，20200，8545。请确保端口没有被占用。

```shell
cd build_cain_group
bash build_chain.sh -f ipconf -p 30300,20200,8545 -e ./FISCO_BCOS_FL/build/bin/fisco-bcos
```

#### 3.4 启动联盟链/停止联盟链

启动所有节点

```shell
bash nodes/127.0.0.1/start_all.sh
```

停止所有节点

```shell
bash nodes/127.0.0.1/stop_all.sh
```

## 客户端配置

### 4.1 Python SDK安装与配置

#### 依赖软件

- **Ubuntu**: `sudo apt install -y zlib1g-dev libffi6 libffi-dev wget git`
- **CentOS**：`sudo yum install -y zlib-devel libffi-devel wget git`
- **MacOs**: `brew install wget npm git`

#### Pyenv安装

`pyenv` pyenv 主要用来对 Python 解释器进行管理，可在不同 `python` 版本之间轻松切换，实现 `python` 环境隔离。

`pyenv-virtualenv`虚拟环境管理也是一样，达到切换虚拟环境的目的。

安装的方式有两种：一种是手动安装，一种是通过`Mac的homebrew安装`，无论采用

```shell
git clone git://github.com/pyenv/pyenv.git ~/.pyenv
```

无论使用上述的哪种方式进行安装，都需要根据自身环境，将下方内容加到对应文件中（mac的话是.zshrc）

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
# 激活配置文件
exec $SHELL -l
```

包管理插件pyenv-virtualenv

```
brew install pyenv-virtualenv
```

将下方内容加到对应文件中： `.bashrc` / `.zshrc`

```shell
echo 'eval "$(pyenv virtualenv-init -)"'>> ~/.zshrc
# 激活配置文件
exec $SHELL -l
```

#### 配置环境

`若python版本>=3.6.3可跳过本步`

```
cd /Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk
# 判断python版本，并为不符合条件的python环境安装python 3.7.3的虚拟环境，命名为python-sdk
# 若python环境符合要求，可以跳过此步
# 若脚本执行出错，请检查是否参考[依赖软件]说明安装了依赖
# 提示：安装python-3.7.3可能耗时比较久
cd python-sdk && bash init_env.sh -p
```

得到如下输出

```bash
(base) hanallen: python-sdk $ bash init_env.sh -p
/Users/hanallen/.pyenv/bin/pyenv
[INFO] clone and init pyenv to install python 3.7.3 !
[INFO] pyenv has already been inited!
[INFO] begin install python 3.7.3...
Looking in links: /var/folders/dj/z5b18b0s78b1_nsqt_f0tqzr0000gn/T/tmp3xj3zkgy
Requirement already satisfied: setuptools in /Users/hanallen/.pyenv/versions/3.7.3/envs/python-sdk/lib/python3.7/site-packages (40.8.0)
Requirement already satisfied: pip in /Users/hanallen/.pyenv/versions/3.7.3/envs/python-sdk/lib/python3.7/site-packages (19.0.3)
[INFO] install python3 succeed!
[INFO] install python 3.7.3 success, please activate with command: pyenv activate python-sdk
```

激活python-sdk虚拟环境

```
source ~/.bashrc && pyenv activate python-sdk && pip install --upgrade pip
```

得到如下输出

```bash
(base) hanallen: python-sdk $ source ~/.bashrc && pyenv activate python-sdk && pip install --upgrade pip
Collecting pip
  Downloading https://files.pythonhosted.org/packages/08/e3/57d4c24a050aa0bcca46b2920bff40847db79535dc78141eb83581a52eb8/pip-23.1.2-py3-none-any.whl (2.1MB)
    100% |████████████████████████████████| 2.1MB 9.5MB/s 
Installing collected packages: pip
  Found existing installation: pip 19.0.3
    Uninstalling pip-19.0.3:
      Successfully uninstalled pip-19.0.3
Successfully installed pip-23.1.2
```

#### 安装**Python SDK**依赖

```shell
pip install -r requirements.txt
pip install tensorflow==2.0.0
pip install pandas==1.2.3
pip install numpy==1.19.2
pip install matplotlib==3.3.4
pip3 install --upgrade protobuf==3.20.1
pip install scikit-learn
```

#### 初始化配置

```shell
cd /Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk
# 使用模板的默认配置初始化客户端配置
cp client_config.py.template client_config.py
# 根据配置下载solc编译器
bash init_env.sh -i
```

得到如下输出

```bash
(bflc-dem) hanallen: python-sdk $ bash init_env.sh -i
[INFO] install solc v0.4.25...
[INFO] Download and install solc into bin/solc/v0.4.25/solc...
Downloading solc 0.4.25 solc-mac.tar.gz from https://github.com/FISCO-BCOS/solidity/releases/download/v0.4.25/solc-mac.tar.gz
######################################################################### 100.0%
==============================================================
[INFO] os            : mac
[INFO] solc version  : 0.4.25
[INFO] solc location : ./solc-0.4.25
==============================================================
[INFO] ./solc-0.4.25 --version
solc, the solidity compiler commandline interface
Version: 0.4.25+commit.46d177ad.mod.Darwin.appleclang
Downloading solc 0.4.25 solc-mac-gm.tar.gz from https://github.com/FISCO-BCOS/solidity/releases/download/v0.4.25/solc-mac-gm.tar.gz
######################################################################### 100.0%
==============================================================
[INFO] os            : mac
[INFO] solc version  : 0.4.25
[INFO] solc location : ./solc-0.4.25-gm
==============================================================
[INFO] ./solc-0.4.25-gm --version
solc, the solidity compiler commandline interface
Gm version: 0.4.25+commit.46d177ad.mod.Darwin.appleclang
```

#### 配置Channel通信协议

Channel协议是FISCO BCOS特有的加密通信协议，具有良好的机密性。根据建链时节点配置的Channel端口，修改/Users/hanallen/go/src/fisco/FISCO-BCOS/python-sdk/client_config.py* 文件

```python
# 本项目建链时，ip=127.0.0.1，节点0的channel_listen_port=20200
channel_host = "127.0.0.1"
channel_port = 20200
```

#### 配置证书

```shell
cd /Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk
cp ../build_chain_group/nodes/127.0.0.1/sdk/* ./bin 
```

配置证书路径，修改 */Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk/client_config.py* 文件

```python
# 根据从节点拷贝的sdk证书路径，设置sdk证书和私钥路径
channel_node_cert = "bin/sdk.crt"
channel_node_key = "bin/sdk.key"
```

注意：原始的 `/Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk/client_config.py`文件中`account_keyfile = "pyaccount.keystore"`字段是被注释的，使用的是`account_keyfile = "pemtest.pem"`，但是在`bin/accounts`下并没有`pemtest.pem`，因此我斗胆把`account_keyfile = "pemtest.pem"`注释了，采用了`account_keyfile = "pyaccount.keystore"`，下面的配置也就是我运行时候的配置

```
account_keyfile_path = "bin/accounts" 
account_keyfile = "pyaccount.keystore"
# account_keyfile = "pemtest.pem"
```

### 4.2 定义预编译合约接口

在 `/Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk/contracts` 目录下创建 `CommitteePrecompiled.sol`文件声明合约接口

```solidity
pragma solidity ^0.4.24;

contract CommitteePrecompiled{
    function RegisterNode() public;                                   //节点注册
    function QueryState() public view returns(string, int);     	  //查询状态
    function QueryGlobalModel() public view returns(string, int);     //获取全局模型
    function UploadLocalUpdate(string update, int256 epoch) public;   //上传本地模型
    function UploadScores(int256 epoch, string scores) public;        //上传评分
    function QueryAllUpdates() public view returns(string);           //获取所有本地模型
}
```

### 4.3 测试账户生成

#### 获取get_account.sh脚本

```shell
cd /Users/hanallen/go/src/fisco/FISCO_BCOS_FL/python-sdk/bin
curl -LO https://raw.githubusercontent.com/FISCO_BCOS_FL/LargeFiles/master/tools/get_account.sh
chmod u+x get_account.sh
# 通过-h 可以查看该脚本相关指令
bash get_account.sh -h
```

#### 生成PEM格式账户私钥（若需批量生成，忽略此步骤）

```shell
bash get_account.sh
```

得到如下输出

```bash
[INFO] Account Address   : 0x72d3bbff99dabd18b6ef03cc003929bd044d452a
[INFO] Private Key (pem) : accounts/0x72d3bbff99dabd18b6ef03cc003929bd044d452a.pem
[INFO] Public  Key (pem) : accounts/0x72d3bbff99dabd18b6ef03cc003929bd044d452a.public.pem
```



#### 批量生成测试账户私钥

调用通过`get_batch_accounts.sh`脚本批量生成20个测试账户

```shell
bash get_batch_accounts.sh -n 20
```

得到如下输出

```bash
[INFO] Account Address   : 0x3234808db2866f2ca253203fd1218aa29f64b45b
[INFO] Private Key (pem) : accounts/0x3234808db2866f2ca253203fd1218aa29f64b45b.pem
[INFO] Public  Key (pem) : accounts/0x3234808db2866f2ca253203fd1218aa29f64b45b.public.pem
[INFO] Account Address   : 0xa159e849195fa0e6030f6a033c0a3566d730cba8
[INFO] Private Key (pem) : accounts/0xa159e849195fa0e6030f6a033c0a3566d730cba8.pem
[INFO] Public  Key (pem) : accounts/0xa159e849195fa0e6030f6a033c0a3566d730cba8.public.pem
[INFO] Account Address   : 0x3168e46357ad74d099ecce5ece35150576191a7d
[INFO] Private Key (pem) : accounts/0x3168e46357ad74d099ecce5ece35150576191a7d.pem
[INFO] Public  Key (pem) : accounts/0x3168e46357ad74d099ecce5ece35150576191a7d.public.pem
....
....
....
[INFO] Account Address   : 0x67ff0cb21bc026dc73c53d7b95c447fb3aeba4f9
[INFO] Private Key (pem) : accounts/0x67ff0cb21bc026dc73c53d7b95c447fb3aeba4f9.pem
[INFO] Public  Key (pem) : accounts/0x67ff0cb21bc026dc73c53d7b95c447fb3aeba4f9.public.pem
```



## Bug 调试

### 1、在部署网络的时候，出现openssl找不到的情况，但是实际上我已经安装了，而且版本也是对的

```shell
(base) hanallen: fisco $ bash build_chain_v2.7.2.sh -l 127.0.0.1:4 -p 30300,20200,8545 -e /Users/hanallen/go/src/fisco/FISCO-BCOS/build/bin/fisco-bcos
please install openssl!
use "openssl version" command to check.
```

该问题来自于`build_chain_v2.7.2.sh`文件，查看其内部代码，在第244行中有对于openssl版本校验的代码

```bash
check_env() {
    if [ "$(uname)" == "Darwin" ];then
        export PATH="/usr/local/opt/openssl/bin:$PATH"
        macOS="macOS"
    fi
    [ ! -z "$(openssl version | grep 1.0.2)" ] || [ ! -z "$(openssl version | grep 1.1)" ] || {
        echo "please install openssl!"
        #echo "download openssl from https://www.openssl.org."
        echo "use \"openssl version\" command to check."
        exit 1
    }

    if [ "$(uname -m)" != "x86_64" ];then
        x86_64_arch="false"
    fi
}
```

通过`openssl version | grep `命令来查看当前是否有和`build_chain_v2.7.2.sh`文件中匹配的`openssl`版本，发现也是存在的，`我们直接把上述验证version的代码注释掉`来解决这个问题。

```bash
(base) hanallen: fisco $ openssl version | grep 1.0.2
(base) hanallen: fisco $ openssl version | grep 1.1
OpenSSL 1.1.1h  22 Sep 2020
```

### 2、pyenv: no such command `virtualenv‘

linux安装

```shell
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
```

mac安装

```shell
brew install pyenv-virtualenv
```

### 3、**BUILD FAILED** (OS X 11.3.1 using python-build 2.3.18)

在pyenv安装python的时候出现如下错误

```shell
python-build: use openssl@1.1 from homebrew
python-build: use readline from homebrew
Installing Python-3.7.3...
python-build: use readline from homebrew
python-build: use zlib from xcode sdk

BUILD FAILED (OS X 11.3.1 using python-build 2.3.18)

...
...
...


1 error generated.
make: *** [Modules/posixmodule.o] Error 1
make: *** Waiting for unfinished jobs....
1 warning generated.
[ERROR] FAILED execution of command: wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz -P ~/.pyenv/cache/ && pyenv install 3.7.3
```

通过如下命令安装python，`将--patch 3.7.3改成对应的版本`

```bash
CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix bzip2)/include -I$(brew --prefix readline)/include -I$(xcrun --show-sdk-path)/usr/include" LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib" pyenv install --patch 3.7.3 < <(curl -sSL https://github.com/python/cpython/commit/8ea6353.patch\?full_index\=1)
```



### 4、If this call came from a _pb2.py file, your generated code is out of date and must be regenerated with protoc >= 3.19.0.

```bash
TypeError: Descriptors cannot not be created directly.
If this call came from a _pb2.py file, your generated code is out of date and must be regenerated with protoc >= 3.19.0.
If you cannot immediately regenerate your protos, some other possible workarounds are:
 1. Downgrade the protobuf package to 3.20.x or lower.
 2. Set PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python (but this will use pure-Python parsing and will be much slower).

More information: https://developers.google.com/protocol-buffers/docs/news/2022-05-06#python-updates
```

出现上述错误，解决办法：

```bash
pip3 install --upgrade protobuf==3.20.1
```

### 5、client.bcoserror.BcosException: call error, error message: Call address error

```bash
Traceback (most recent call last):
  File "main.py", line 245, in main_loop
    (role, global_epoch) =  client.call(to_address, contract_abi, "QueryState")
  File "/Users/hanallen/go/src/fisco/FISCO-BCOS/python-sdk/client/bcosclient.py", line 454, in call
    raise BcosException("call error, error message: {}".format(error_message))
client.bcoserror.BcosException: call error, error message: Call address error
```

这个问题是因为我没在`/Users/hanallen/go/src/fisco/FISCO-BCOS/cmake/templates/UserPrecompiled.h.in`文件中为预编译合约定义地址，而直接在main函数中为合约分配了一个地址，这样会导致系统认为该地址不合法，因此必须为每一个自定义的预编译合约在该文件中定义相应的合约地址。

### 6、关闭Tensorflow的警告信息

尝试很多的方式比如常见的warnings模块以及通过os模块来修改日志级别，但是这两种方式都无效

```
import warnings
warnings.filterwarnings(“ignore”)
```

```
import os
os.environ[“TF_CPP_MIN_LOG_LEVEL”] = ‘2’
```

`终极解决办法:` 分别对应Tensorflow V1 和Tensorflow V2版本，使用该方法，成功去除烦人的警告信息

对于TF 1.X版本，使用下列代码

```
import tensorflow.compat.v1 as tf
tf.logging.set_verbosity(tf.logging.ERROR)
```

对于TF 2.X版本，使用下列代码

```
import tensorflow as tf
tf.logging.set_verbosity(tf.logging.ERROR)
```



## 参考文献

[1] [FISCO BCOS源码编译](https://fisco-bcos-documentation.readthedocs.io/zh_CN/latest/docs/tutorial/compile.html)

[2] [FISCO 智能合约开发](https://www.bookstack.cn/read/fisco-bcos-2.2/f24b86c5c71b7220.md#93esgq)

[3] [FISCO BCOS学习资料索引](http://kb.bsnbase.com/webdoc/view/Pub4028813e711a7c3901712a9351ec083f.html)

[4] [Mac上的python版本管理工具安装](https://juejin.cn/post/7056800493753860103)

[5] [Python版本管理神器-pyenv](https://zhuanlan.zhihu.com/p/36402791/)
