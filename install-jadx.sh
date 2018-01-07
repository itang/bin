#!/bin/bash

cd "$HOME/dev-env"

if [ -d "jadx" ]; then
  bin/jadx -h
  (cd jadx && git pull)
else 
  git clone git@github.com:skylot/jadx.git --depth 1
fi

cd jadx
gradle dist
bin/jadx -h
