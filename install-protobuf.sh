#!/bin/bash

VERSION=3.5.1


sudo apt-get install -yq autoconf automake libtool curl make g++ unzip

cd /tmp
#hget https://github.com/google/protobuf/releases/download/v$VERSION/protobuf-cpp-$VERSION.tar.gz
wget https://github.com/google/protobuf/releases/download/v$VERSION/protoc-$VERSION-linux-x86_64.zip

rm -rf ~/dev-env/protobuf
unzip protoc-$VERSION-linux-x86_64.zip -d ~/dev-env/protobuf
