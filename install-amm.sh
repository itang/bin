#!/bin/bash

mkdir -p ~/.ammonite && curl -L -o ~/.ammonite/predef.sc https://git.io/vHaKQ

cd ~/.local/bin
curl -L -o amm https://git.io/v7cx7 && chmod +x amm
