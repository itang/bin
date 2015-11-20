#!/bin/bash

PLATFORM=linux-x86_64-ubuntu1404
VERSION=3.0.7

function download() {
  cd /tmp
  wget https://fastdl.mongodb.org/linux/mongodb-$PLATFORM-$VERSION.tgz
}

function install() {
  cd /tmp
  tar zxvf mongodb-$PLATFORM-$VERSION.tgz -C ~/dev-env/
}

function link() {
  cd ~/dev-env
  rm mongodb
  ln -s mongodb-$PLATFORM-$VERSION mongodb
}

################################################################################
## main
download
install
link

ret=$?
echo $ret
