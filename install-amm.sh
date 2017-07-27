#!/bin/bash

cd ~/dev-env/tools

mkdir -p ~/.ammonite && curl -L -o ~/.ammonite/predef.sc https://git.io/vHaKQ
curl -L -o amm https://git.io/vQEhd && chmod +x amm
