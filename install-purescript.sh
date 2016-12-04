#!/bin/bash

version=0.10.2

function install_by_source() {
    cd /tmp

    wget https://github.com/purescript/purescript/archive/v$version.tar.gz

    tar zxvf v$version.tar.gz

    cd purescript-$version

    stack update

    stack unpack purescript

    cd purescript-$version

    stack setup
    stack install

    echo "add ~/.local/bin to .zshenv"
}

function install_by_binary() {
    cd /tmp
    wget https://github.com/purescript/purescript/releases/download/v$version/linux64.tar.gz
    tar zxvf linux64.tar.gz
    cp purescript/* ~/.local/bin
    psc --version
}

function install_by_npm() {
    npm install -g purescript pulp
}

# main
#install_binary

install_by_binary
