#!/bin/bash

cd /tmp
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt-get update
sudo apt-get install esl-erlang


#VERSION=19.0.3-1~ubuntu~wily_amd64

#(
#    cd /tmp
#    wget http://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_$VERSION.deb && 
#    sudo dpkg -i esl-erlang_$VERSION.deb && 
#    erl -version
#)

## on i386: sudo apt-get install libwxbase3.0-0
