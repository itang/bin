#!/bin/bash

VERSION=1.9.1

janet -v

(
    cd /tmp
    wget https://github.com/janet-lang/janet/releases/download/v${VERSION}/janet-v${VERSION}-linux.tar.gz
    tar -zxvf janet-v${VERSION}-linux.tar.gz -C ~/dev-env/
)

(
    cd ~/dev-env
    ln -snf janet-v${VERSION}-linux janet
)

janet -v
