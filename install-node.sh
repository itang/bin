#!/bin/bash

VERSION=0.10.33

(
cd /tmp
rm node-v${VERSION}-linux-x64.tar.gz
wget http://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.gz &&
rm -rf ~/dev-env/node-v${VERSION}-linux-x64 &&
tar zxvf node-v${VERSION}-linux-x64.tar.gz -C ~/dev-env &&
cd ~/dev-env && 
rm -rf node &&
ln -s node-v${VERSION}-linux-x64 node &&
node -v  &&
npm install -g react-tools
)
