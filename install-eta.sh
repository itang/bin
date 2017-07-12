#!/bin/bash

# http://eta-lang.org/docs/html/getting-started.html#method-1-source-installation

cd ~/dev-env
# http://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
if [ -d "eta" ]; then
    #(cd eta && git pull)
    cd eta
    ./update.sh
else
    git clone --recursive https://github.com/typelead/eta
    cd eta
    stack setup
    ./install.sh
fi

eta --version

if [ "$0" != "0" ]; then
    echo "You should add $(stack path --local-bin) to your system PATH"
fi
