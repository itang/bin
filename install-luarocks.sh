#!/bin/bash

# link: https://luarocks.org/#quick-start

LVERSION=2.4.4
(
    cd /tmp
    rm -rf luarocks*
    wget https://luarocks.org/releases/luarocks-${LVERSION}.tar.gz
    tar zxpf luarocks-${LVERSION}.tar.gz
    cd luarocks-${LVERSION}

    ./configure; sudo make bootstrap
)

## lua packages
sudo luarocks install luasocket
sudo luarocks install --server=http://luarocks.org/dev fennel
