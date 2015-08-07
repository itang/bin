#!/bin/bash

VERSION=0.7.2

cd /tmp
wget https://github.com/purescript/purescript/releases/download/v$VERSION/linux64.tar.gz

tar zxvf linux64.tar.gz -C ~/dev-env

echo "add below code to .profile"

echo 'export PURESCRIPT_HOME=$DE/purescript

export PATH=$PURESCRIPT_HOME:$PATH
'
# source ~/.profile
# psc --version

npm install -g pulp
