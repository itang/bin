#!/bin/bash

VERSION=0.10.2

joker --version

cd /tmp

wget https://github.com/candid82/joker/releases/download/v$VERSION/joker-$VERSION-linux-amd64.zip

unzip joker-$VERSION-linux-amd64.zip
cp joker ~/.local/bin

joker --version
