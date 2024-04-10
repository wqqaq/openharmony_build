#!/bin/bash

mkdir -p /home/openharmony
wget -P /home/openharmony https://repo.huaweicloud.com/harmonyos/os/1.1.1/code-v1.1.1-LTS.tar.gz
tar xvf /home/openharmony/code-v1.1.1-LTS.tar.gz -C /home/openharmony

sed -i '$aexport PATH=/home/tools/llvm/bin:$PATH' ~/.bashrc
sed -i '$aexport PATH=/home/tools/hc-gen:$PATH' ~/.bashrc
sed -i '$aexport PATH=/home/tools/gcc_riscv32/bin:$PATH' ~/.bashrc
sed -i '$aexport PATH=/home/tools/ninja:$PATH' ~/.bashrc
sed -i '$aexport PATH=/home/tools/node-v12.20.0-linux-x64/bin:$PATH' ~/.bashrc
sed -i '$aexport PATH=/home/tools:$PATH' ~/.bashrc
sed -i '$aexport PATH=~/.local/bin:$PATH' ~/.bashrc
export PATH=/home/tools/llvm/bin:$PATH
export PATH=/home/tools/hc-gen:$PATH
export PATH=/home/tools/gcc_riscv32/bin:$PATH
export PATH=/home/tools/ninja:$PATH
export PATH=/home/tools/node-v12.20.0-linux-x64/bin:$PATH
export PATH=/home/tools:$PATH
export PATH=~/.local/bin:$PATH
source ~/.bashrc
