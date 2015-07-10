#!/bin/bash

VERSION=2.3.3

(
cd /tmp
rm iojs-v${VERSION}-linux-x64.tar.xz
rm -rf ~/dev-env/iojs-v${VERSION}-linux-x64
wget https://iojs.org/dist/v${VERSION}/iojs-v${VERSION}-linux-x64.tar.xz &&
tar xvJf iojs-v${VERSION}-linux-x64.tar.xz -C ~/dev-env &&
cd ~/dev-env && 
rm -rf node &&
ln -s iojs-v${VERSION}-linux-x64 node &&
node -v  
##&&
#npm install -g react-tools
)
