#!/bin/bash

VERSION=0.10.0-beta1

cd /tmp

rm apache-storm-${VERSION}/apache-storm-${VERSION}.tar.gz
wget http://apache.fayea.com/storm/apache-storm-${VERSION}/apache-storm-${VERSION}.tar.gz

tar zxvf apache-storm-${VERSION}/apache-storm-${VERSION}.tar.gz ~/dev-env
