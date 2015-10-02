#!/bin/bash

SPARK_VERSION=1.5.1
HADOOP_VERSION=2.6

cd /tmp
rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}*.tgz
wget http://mirrors.cnnic.cn/apache/spark/spark-$SPARK_VERSION/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

tar zxvf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -C ~/dev-env/

cd ~/dev-env
rm spark
ln -s spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark
