#!/bin/bash

VERSION=1.9.6
(
cd /tmp
rm apache-ant-${VERSION}-bin.tar.gz

wget http://mirror.bit.edu.cn/apache//ant/binaries/apache-ant-${VERSION}-bin.tar.gz
tar -zxvf apache-ant-${VERSION}-bin.tar.gz -C ~/dev-env

cd ~/dev-env
ln -s apache-ant-${VERSION} ant

echo "add ~/dev-env/ant to \$PATH"
)