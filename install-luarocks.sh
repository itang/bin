#!/bin/bash

VERSION=2.3.0

cd /tmp
#wget http://luarocks.org/releases/luarocks-$VERSION.tar.gz
#tar zxvf luarocks-$VERSION.tar.gz
cd luarocks-$VERSION
./configure --with-lua="/usr/local" --lua-suffix="jit" --with-lua-include="/usr/local/include/luajit-2.1"
sudo make bootstrap

## lua packages
sudo luarocks install luasocket
