#!/bin/bash

#echo "使用install-n.sh代替..."
#exit 0

VERSION=14.3.0

node -v

(
    cd /tmp || exit
    rm node-v${VERSION}-linux-x64.tar.xz
    wget https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz &&
        tar -xvf node-v${VERSION}-linux-x64.tar.xz -C ~/dev-env/ &&
        cd ~/dev-env/ &&
        rm node &&
        ln -s node-v${VERSION}-linux-x64 node

    ##&&
    #npm install -g react-tools
)

node -v

#npm install -g source-map-support --registry=https://registry.npm.taobao.org
#npm install -g cnpm --registry=https://registry.npm.taobao.org
