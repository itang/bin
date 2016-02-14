#!/bin/bash

cd /tmp

rm -rf htop
git clone git@github.com:hishamhm/htop.git

cd htop

sudo apt-get install libncursesw5 libncursesw5-dev
./autogen.sh && ./configure && make && sudo make install
