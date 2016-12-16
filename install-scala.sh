#!/bin/bash

SCALA_VERSION=2.12.1
(
cd ~/Downloads
rm scala-${SCALA_VERSION}.tgz
wget http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz
tar zxvf scala-${SCALA_VERSION}.tgz -C ~/dev-env

cd ~/dev-env
rm scala
ln -s scala-${SCALA_VERSION} scala
source ~/.profile
scala -version
)
