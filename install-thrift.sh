#!/bin/bash

VERSION=0.9.3

function download() {
  cd /tmp
  wget http://mirrors.hust.edu.cn/apache/thrift/${VERSION}/thrift-${VERSION}.tar.gz
}

function extract() {
  cd /tmp
  tar zxvf thrift-${VERSION}.tar.gz -C ~/dev-env/
  cd ~/dev-env
  rm thrift
  ln -s thrift-${VERSION} thrift
}

function build() {
  cd ~/dev-env/thrift
  ./configure --without-haskell --without-nodejs && make
}

function install() {
  cd ~/dev-env/thrift
  sudo JAVA_HOME=/home/itang/dev-env/java make install
}

##################################################################################
download && 
extract &&
build && 
install;
