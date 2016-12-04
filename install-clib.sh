#!/bin/bash

# install libcurl
sudo apt-get install libcurl4-gnutls-dev -qq
# clone
git clone https://github.com/clibs/clib.git /tmp/clib && cd /tmp/clib
# build
make
# put on path
sudo make install
