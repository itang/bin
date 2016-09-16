#!/bin/bash


action=$1

if [ "$action" == "update" ]; then
    vapor self update
    # vapor self compile
else
    curl -sL toolbox.vapor.sh | bash
fi

vapor --help
