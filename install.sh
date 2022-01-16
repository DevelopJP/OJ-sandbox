#!/bin/bash -e

apt-get update
apt-get install wget curl git -y
apt-get install python3-pip -y #自带安装g++ 9.3.0 gcc 9.3.0 就是NOI系列赛事标准
mkdir ~/.pip/
echo -e "[global]\nindex-url = https://mirrors.aliyun.com/pypi/simple/\n\n[install]\ntrusted-host=mirrors.aliyun.com\n" > ~/.pip/pip.conf
pip3 install pandas #上海高中信息课本中用到的库
pip3 install requests 
pip3 install matplotlib
git clone https://github.com/MikeMirzayanov/testlib /tmp/testlib
cp /tmp/testlib/testlib.h /usr/include/
