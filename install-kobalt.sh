#!/bin/bash

VERSION=0.637

function download() {
    cd /tmp
    wget https://github.com/cbeust/kobalt/releases/download/$VERSION/kobalt-$VERSION.zip
}

function extract() {
    cd /tmp
    rm -rf /home/itang/dev-env/kobalt
    mkdir -p /home/itang/dev-env/kobalt
    unzip kobalt-$VERSION.zip -d /home/itang/dev-env/kobalt/
}

function install() {
    cd /home/itang/dev-env/kobalt
    chmod +x kobaltw
    tree
    #cd ~/dev-env
    #ln -sfn kobalt-$VERSION kobalt
}

##################################################################################
download && extract && install
