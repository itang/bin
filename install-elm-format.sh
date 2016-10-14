#!/bin/bash

VERSION=0.4.0-alpha
ELM_VERSION=0.17

cd /tmp

#wget https://github.com/avh4/elm-format/releases/download/$VERSION/elm-format-$ELM_VERSION-$VERSION-linux-x64.tgz
tar zxvf elm-format-$ELM_VERSION-$VERSION-linux-x64.tgz -C ~/dev-env/tools

elm-format -h
