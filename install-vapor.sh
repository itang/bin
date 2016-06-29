#!/bin/bash


action=$1


if [ "$action" == "update" ]; then

    vapor self update

else

    cd ~/dev-env/tools

    curl -L cli.qutheory.io -o vapor
    chmod +x vapor

fi

vapor help

