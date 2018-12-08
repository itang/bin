#!/bin/bash

VERSION=0.11.0-RC1

cd /tmp
#wget https://github.com/lampepfl/dotty/releases/download/$VERSION/dotty-$VERSION.tar.gz
tar -zxvf dotty-$VERSION.tar.gz -C ~/dev-env

cd ~/dev-env
ln -snf dotty-$VERSION dotty
