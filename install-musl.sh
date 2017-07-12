#!/bin/bash

version=1.1.15

#musl-gcc --version

cd /tmp
(
    wget https://www.musl-libc.org/releases/musl-$version.tar.gz

    tar zxvf musl-$version.tar.gz

    cd musl-$version
    ./configure
    sudo make install
)

echo "add /usr/local/musl/bin/musl-gcc to your $PATH"
#musl-gcc --version
