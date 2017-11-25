#!/bin/bash

etlas --version

mode=$1

if [ "$mode" = "install" ]; then
    cd /tmp
    wget http://88a2a1b21f8e03a6bc8d-8f2e61d843ea88e4f30ab3f81ca0e396.r42.cf5.rackcdn.com/etlas-1.1.0.0/binaries/x86_64-linux/etlas
    cp etlas ~/.local/bin
    chmod +x ~/.local/bin/etlas
fi

etlas update
etlas select latest

etlas --version
