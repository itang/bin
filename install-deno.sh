#!/bin/bash

VERSION=v0.40.0

deno --version

cd /tmp

rm deno-x86_64-unknown-linux-gnu.zip
wget https://github.com/denoland/deno/releases/download/${VERSION}/deno-x86_64-unknown-linux-gnu.zip

#gunzip  -c deno_linux_x64.gz > ~/.local/bin/deno
unzip deno-x86_64-unknown-linux-gnu.zip
cp deno ~/.local/bin/
chmod +x ~/.local/bin/deno

deno --version
