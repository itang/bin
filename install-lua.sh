#!/bin/bash

VERSION=5.3.4
(
    cd /tmp
    curl -R -O http://www.lua.org/ftp/lua-${VERSION}.tar.gz
    tar zxf lua-${VERSION}.tar.gz
    cd lua-${VERSION}
    make linux test
    
    sudo make install
)
