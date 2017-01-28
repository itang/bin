#!/bin/bash

VERSION=3.92

(
    cd /tmp

    wget https://github.com/upx/upx/releases/download/v$VERSION/upx-$VERSION-amd64_linux.tar.xz

    tar -xJf upx-$VERSION-amd64_linux.tar.xz

    cp upx-$VERSION-amd64_linux/upx ~/dev-env/tools/

    upx --version
)
