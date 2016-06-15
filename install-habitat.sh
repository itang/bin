#!/bin/bash

TARGET=~/dev-env/habitat

if [ "$1" == "update" ]; then
    echo update
    cd $TARGET
    git pull
else
    echo install

    sudo apt-get install -y libarchive-dev libsodium-dev libzmq-dev

    cd ~/dev-env
    git clone git@github.com:habitat-sh/habitat.git

    cd habitat
    make
    make test
fi

cd $TARGET
make
#make test

#git clone git@github.com:habitat-sh/habitat.git; cd habitat
