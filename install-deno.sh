#!/bin/bash

<<<<<<< HEAD
VERSION=v0.18.0
=======
VERSION=v0.21.0
>>>>>>> 84048e8a679a16f34543c2a40dce823387961d34

deno version

cd /tmp
rm deno_linux_x64.gz
wget https://github.com/denoland/deno/releases/download/${VERSION}/deno_linux_x64.gz

gunzip  -c deno_linux_x64.gz > ~/.local/bin/deno
chmod +x ~/.local/bin/deno

deno version
  
