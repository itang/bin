#!/bin/bash

cd ~/dev-env
mkdir clang
wget http://releases.llvm.org/3.8.0/clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-15.10.tar.xz
tar xpf clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-15.10.tar.xz
export PATH=$HOME/tools/developer/clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu/bin:$PATH
hash -r

