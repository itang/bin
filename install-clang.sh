#!/bin/bash

cd ~/dev-env
mkdir clang && cd clang

wget http://releases.llvm.org/3.8.0/clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-15.10.tar.xz

tar xpf clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-15.10.tar.xz
export PATH=$HOME/dev-env/clang/clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-15.10/bin:$PATH
hash -r

