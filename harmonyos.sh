#!/bin/bash
apt-get update -y
apt-get install curl wget -y
apt-get install vim -y
apt-get install ssh -y
apt-get install git -y
apt-get install python3.8 -y
apt-get install python3-pip -y
apt-get install dosfstools -y
apt-get install mtools -y
apt-get install scons -y
apt-get install make -y
apt-get install libffi-dev -y
apt-get install zip -y
apt-get install python3-distutils -y
apt-get install binutils -y
apt-get install mtd-utils -y
apt-get install libc6-dev-x32 -y
DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get -y install tzdata
apt-get install default-jre -y
apt-get install default-jdk -y
apt-get install bison -y
apt-get install flex -y
apt-get install bc -y
apt-get install u-boot-tools -y
apt-get install gcc-arm-linux-gnueabi -y
apt-get install build-essential
apt-get install locales
locale-gen "en_US.UTF-8"
rm -rf /bin/sh /usr/bin/python /usr/bin/python3
ln -s /bin/bash /bin/sh
ln -s /usr/bin/python3.8 /usr/bin/python3
ln -s /usr/bin/python3.8 /usr/bin/python
pip3 install --trusted-host mirrors.aliyun.com -i https://mirrors.aliyun.com/pypi/simple setuptools
pip3 install --trusted-host mirrors.aliyun.com -i https://mirrors.aliyun.com/pypi/simple kconfiglib
pip3 install --trusted-host mirrors.aliyun.com -i http://mirrors.aliyun.com/pypi/simple pycryptodome
pip3 install --trusted-host mirrors.aliyun.com -i https://mirrors.aliyun.com/pypi/simple ecdsa
python3 -m pip install --user ohos-build==0.4.3

mkdir -p /home/tools
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/compiler/clang/9.0.0-36191/linux/llvm-linux-9.0.0-36191.tar
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/compiler/hc-gen/0.65/linux/hc-gen-0.65-linux.tar
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/compiler/gcc_riscv32/7.3.0/linux/gcc_riscv32-linux-7.3.0.tar.gz
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/compiler/ninja/1.9.0/linux/ninja.1.9.0.tar
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/compiler/gn/1717/linux/gn-linux-x86-1717.tar.gz
wget -P /home/tools https://mirrors.huaweicloud.com/nodejs/v12.20.0/node-v12.20.0-linux-x64.tar.gz
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/develop_tools/hmos_app_packing_tool.jar
wget -P /home/tools https://repo.huaweicloud.com/harmonyos/develop_tools/hapsigntoolv2.jar
tar xvf /home/tools/llvm-linux-9.0.0-36191.tar -C /home/tools
tar xvf /home/tools/hc-gen-0.65-linux.tar -C /home/tools
tar xvf /home/tools/gcc_riscv32-linux-7.3.0.tar.gz -C /home/tools
tar xvf /home/tools/ninja.1.9.0.tar -C /home/tools
tar xvf /home/tools/gn-linux-x86-1717.tar.gz -C /home/tools
tar xvf /home/tools/node-v12.20.0-linux-x64.tar.gz -C /home/tools

rm -rf /home/tools/*.tar
rm -rf /home/tools/*.gz
npm install -g @ohos/hpm-cli --registry https://mirrors.huaweicloud.com/repository/npm/
