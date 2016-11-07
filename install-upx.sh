#!/bin/bash

VERSION=3.91

(
    cd /tmp

    wget https://github.com/upx/upx/releases/download/v$VERSION/upx-$VERSION-amd64_linux.tar.bz2

    tar jxvf upx-$VERSION-amd64_linux.tar.bz2

    cp upx-$VERSION-amd64_linux/upx ~/dev-env/tools/

    upx --version
)
