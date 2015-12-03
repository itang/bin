#!/bin/bash

VERSION=0.10.0

cd /tmp

rm apache-storm-${VERSION}/apache-storm-${VERSION}.tar.gz

wget http://mirror.bit.edu.cn/apache/storm/apache-storm-${VERSION}/apache-storm-${VERSION}.tar.gz
#wget http://apache.fayea.com/storm/apache-storm-${VERSION}/apache-storm-${VERSION}.tar.gz

tar zxvf apache-storm-${VERSION}.tar.gz -C ~/dev-env/

cd ~/dev-env

rm storm

ln -s apache-storm-0.10.0 storm

storm/bin/storm version
