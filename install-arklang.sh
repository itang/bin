#!/bin/bash

sudo apt-get install libedit-dev
sudo apt-get install cmake
sudo apt-get install libgit2-dev

version=3.7.1
(
    cd /tmp
    wget http://llvm.org/releases/$version/clang+llvm-$version-x86_64-linux-gnu-ubuntu-14.04.tar.xz

    tar xvJf clang+llvm-$version-x86_64-linux-gnu-ubuntu-14.04.tar.xz -C ~/dev-env/

    cd ~/dev-env/
    ln -sfn clang+llvm-$version-x86_64-linux-gnu-ubuntu-14.04 llvm

    llvm-config --version
)

release=RELEASE_371
(
    #https://llvm.org/svn/llvm-project/llvm/tags/RELEASE_371/
    # set this to match your llvm-config --version
    svn co https://llvm.org/svn/llvm-project/llvm/tags/$release/final $GOPATH/src/llvm.org/llvm
    cd $GOPATH/src/llvm.org/llvm/bindings/go
    ./build.sh
    go install llvm.org/llvm/bindings/go/llvm
    go get -u -v github.com/ark-lang/ark/...

    ark --version
)
