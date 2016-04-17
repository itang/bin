#!/bin/bash

VERSION=18.3-1~ubuntu~wily_amd64

(
cd /tmp

wget http://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_$VERSION.deb


sudo dpkg -i esl-erlang_$VERSION.deb && erl -version
)
