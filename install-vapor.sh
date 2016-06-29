#!/bin/bash


action=$1


if [ "$action" == "update" ]; then

    vapor self update
    vapor self compile

else

    cd ~/dev-env/tools

    curl -L cli.qutheory.io -o vapor
    chmod +x vapor
    
    vapor self compile
fi

vapor help

