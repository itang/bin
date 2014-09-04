#!/bin/bash

# see http://oss.readytalk.com/avian/status.html
(
cd /tmp
wget http://oss.readytalk.com/avian-web/avian-1.0.2.tar.bz2 &&
tar jxvf avian-1.0.2.tar.bz2 &&
cd avian &&
make &&
cp -r build/linux-x86_64 ~/dev-env/avian
avian -version
)