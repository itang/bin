#!/bin/bash

(
cd ~/Downloads
rm scala-2.11.1.tgz
wget http://downloads.typesafe.com/scala/2.11.1/scala-2.11.1.tgz
tar zxvf scala-2.11.1.tgz -C ~/dev-env

cd ~/dev-env
ln -s scala-2.11.1 scala
source ~/.profile
scala -version
)
