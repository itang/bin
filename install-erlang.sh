#!/bin/bash

VERSION=17.1-1

(
cd /tmp
wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_${VERSION}~ubuntu~precise_amd64.deb &&
sudo dpkg -i esl-erlang_${VERSION}~ubuntu~precise_amd64.deb &&
erl -version
)
