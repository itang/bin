#!/bin/bash

cd ~/dev-env/tools

mkdir -p ~/.ammonite && curl -L -o ~/.ammonite/predef.sc https://git.io/v6r5y
curl -L -o amm https://git.io/vP4Gw && chmod +x amm
