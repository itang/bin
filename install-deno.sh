#!/bin/bash

VERSION=v0.3.1

deno --version

cd /tmp
rm deno_linux_x64.gz
wget https://github.com/denoland/deno/releases/download/${VERSION}/deno_linux_x64.gz

gunzip  -c deno_linux_x64.gz > ~/.local/bin/deno
chmod +x ~/.local/bin/deno

deno --version
  
