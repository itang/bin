#!/bin/bash

echo "do 'sudo apt-get install nailgun' first..."

cd ~/dev-env

if [[ -d "cbt" ]]; then
    echo update
    (
        cd cbt
        git pull
    )
else
    echo "git clone https://github.com/cvogt/cbt.git"
    git clone https://github.com/cvogt/cbt.git
fi
