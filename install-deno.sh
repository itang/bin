#!/bin/bash

VERSION=v0.1.2

deno --version

cd /tmp
wget https://github.com/denoland/deno/releases/download/${VERSION}/deno_linux_x64.gz

gunzip  -c deno_linux_x64.gz > ~/.local/bin/deno
chmod +x ~/.local/bin/deno

deno --version
