#!/bin/bash

VERSION=0.1.0

bb --version

(
    cd /tmp || exit 1
    wget https://github.com/borkdude/babashka/releases/download/v${VERSION}/babashka-${VERSION}-linux-amd64.zip
    unzip babashka-0.1.0-linux-amd64.zip
    cp bb ~/.local/bin/
)

bb --version
