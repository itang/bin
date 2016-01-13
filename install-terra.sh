#!/bin/bash

V=release-2015-08-03
P=84bbb0b
cd /tmp

wget https://github.com/zdevito/terra/releases/download/$V/terra-Linux-x86_64-$P.zip

unzip terra-Linux-x86_64-$P.zip -d ~/dev-env/

