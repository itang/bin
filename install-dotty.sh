#!/bin/bash

VERSION=0.13.0-RC1

cd /tmp
rm -rf dotty-$VERSION.tar.gz
wget https://github.com/lampepfl/dotty/releases/download/$VERSION/dotty-$VERSION.tar.gz
tar -zxvf dotty-$VERSION.tar.gz -C ~/dev-env

cd ~/dev-env
ln -snf dotty-$VERSION dotty
