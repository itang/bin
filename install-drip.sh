#!/bin/bash

(cd ~/dev-env
rm -rf drip

git clone https://github.com/flatland/drip.git &&
cd drip && make prefix=~/bin install
)
