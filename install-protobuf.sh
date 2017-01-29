#!/bin/bash

VERSION=3.2.0


sudo apt-get install -y autoconf automake libtool curl make g++ unzip

cd /tmp

hget https://github.com/google/protobuf/releases/download/v$VERSION/protobuf-cpp-$VERSION.tar.gz

tar zxvf protobuf-cpp-$VERSION.tar.gz

cd protobuf-$VERSION

./configure && make && make check

sudo make install

sudo ldconfig
