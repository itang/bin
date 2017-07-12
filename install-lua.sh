#!/bin/bash

VERSION=5.2.3
(
    cd /tmp
    curl -R -O http://www.lua.org/ftp/lua-${VERSION}.tar.gz
    tar zxf ${VERSION}.tar.gz
    cd lua-${VERSION}
    make linux test

    rm -rf ~/dev-env/lua
    mkdir ~/dev-env/lua
    cp -r ./* ~/dev-env/lua
)

LVERSION=2.2.0
(
    cd /tmp
    rm -rf luarocks*
    curl -R -O http://luarocks.org/releases/luarocks-${LVERSION}.tar.gz
    tar zxvf luarocks-${LVERSION}.tar.gz
    cd luarocks-${LVERSION}

    export PREFIX=$HOME/dev-env/
    ./configure --lua-version=5.2 --with-lua=/home/itang/dev-env/lua/src --with-lua-include=/home/itang/dev-env/lua/src --with-lua-lib=/home/itang/dev-env/lua/src
    make
    sudo make install
)
