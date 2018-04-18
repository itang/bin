#!/bin/bash

cd /tmp 

curl -L https://github.com/amberframework/amber/archive/stable.tar.gz | tar xz
cd amber-stable/
shards install
sudo make install

