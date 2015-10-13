#!/bin/bash

VERSION=4.2.0

(
cd /tmp
rm node-v${VERSION}-linux-x64.tar.gz
wget https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.gz &&
tar zxvf node-v${VERSION}-linux-x64.tar.gz -C ~/dev-env/ && 
cd ~/dev-env/ &&
rm node &&
ln -s node-v${VERSION}-linux-x64 node

node -v 

##&&
#npm install -g react-tools
)
