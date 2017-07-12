#!/bin/bash

VERSION=3.5.1-alpha
(
    cd /tmp
    rm zookeeper-${VERSION}.tar.gz
    wget http://mirrors.cnnic.cn/apache/zookeeper/zookeeper-${VERSION}/zookeeper-${VERSION}.tar.gz
    tar -zxvf zookeeper-${VERSION}.tar.gz -C ~/dev-env
    cd ~/dev-env/
    ln -s zookeeper-${VERSION} zookeeper
    cd zookeeper
    cp conf/zoo_sample.cfg conf/zoo.cfg
)
