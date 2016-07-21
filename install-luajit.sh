#!/bin/bash

VERSION=LuaJIT-2.1.0-beta2

cd /tmp

wget http://luajit.org/download/$VERSION.tar.gz

tar -zxvf $VERSION.tar.gz

cd $VERSION

make

sudo make install
