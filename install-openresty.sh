#!/bin/bash

VERSION=1.9.15.1

mode=$1

if [ "$mode" == 'update' ]; then

   echo ""

else
   sudo apt-get install libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make build-essential

   cd /tmp
   wget https://openresty.org/download/openresty-$VERSION.tar.gz
   tar zxvf openresty-$VERSION.tar.gz -C .
   cd openresty-$VERSION
   ./configure
   make
   sudo make install
fi
