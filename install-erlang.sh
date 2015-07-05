#!/bin/bash

VERSION=18.0-1

(
cd /tmp
wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_esl/esl-erlang_${VERSION}~ubuntu~trusty_amd64.deb

sudo dpkg -i esl-erlang_${VERSION}~ubuntu~trusty_amd64.deb &&
erl -version
)
