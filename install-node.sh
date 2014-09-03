#!/bin/bash

VERSION=0.10.31

(
cd /tmp
rm node-v${VERSION}-linux-x64.tar.gz
wget http://nodejs.org/dist/v0.10.31/node-v${VERSION}-linux-x64.tar.gz &&
rm -rf ~/dev-env/node-v${VERSION}-linux-x64 &&
tar zxvf node-v${VERSION}-linux-x64.tar.gz -C ~/dev-env &&
cd ~/dev-env && 
rm -rf node &&
ln -s node-v${VERSION}-linux-x64 node &&
node -v  &&
npm install -g react-tools
)
