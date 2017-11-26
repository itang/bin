#!/bin/bash

# links: https://github.com/carp-lang/Carp/blob/master/docs/Install.md

action=$1

if [ "$action" == 'update' ]; then
    cd ~/dev-env/Carp
    git pull
else
    cd ~/dev-env
    git clone git@github.com:carp-lang/Carp.git
    # sudo apt-get install -y cmake
fi

cd ~/dev-env/Carp

stack build && stack install
