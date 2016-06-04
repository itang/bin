#!/bin/bash

oden -V

VERSION=0.3.4

(

cd /tmp

wget https://github.com/oden-lang/oden/releases/download/$VERSION/oden-$VERSION-linux.tar.gz

rm -rf ~/dev-env/oden
mkdir ~/dev-env/oden

tar -zxvf oden-$VERSION-linux.tar.gz -C ~/dev-env

oden -V
)
