#!/bin/bash

sudo apt-get install libffi-dev libedit-dev libuv-dev libboost-all-dev

cd ~/dev-env

git clone git@github.com:pixie-lang/pixie.git --depth=1

cd pixie
make build_with_jit
