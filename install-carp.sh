#!/bin/bash

action=$1

if [ "$action" == 'update' ]; then
    cd ~/dev-env/Carp
    git pull
else
    cd ~/dev-env
    git clone git@github.com:eriksvedang/Carp.git
    sudo apt-get install -y cmake
fi

cd ~/dev-env/Carp
cmake .
make all
