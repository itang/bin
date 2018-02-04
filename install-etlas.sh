#!/bin/bash

etlas --version

mode=$1

if [ "$mode" = "install" ]; then
    cd /tmp
    wget https://cdnverify.eta-lang.org/eta-binaries/etlas-1.2.0.0/binaries/x86_64-linux/etlas
    cp etlas ~/.local/bin
    chmod +x ~/.local/bin/etlas
fi

etlas update
etlas select latest

etlas --version
