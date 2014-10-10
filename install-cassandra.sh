#!/bin/bash

VERSION=2.1.0

(cd /tmp
wget http://mirrors.cnnic.cn/apache/cassandra/${VERSION}/apache-cassandra-${VERSION}-bin.tar.gz
tar zxvf apache-cassandra-${VERSION}-bin.tar.gz ~/dev-env

## start server
#cd ~/dev-env/apache-cassandra-${VERSION}
#bin/cassandra
)
