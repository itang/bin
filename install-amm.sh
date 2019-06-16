#!/bin/bash

mkdir -p ~/.ammonite && curl -L -o ~/.ammonite/predef.sc https://git.io/vHaKQ

cd ~/.local/bin
curl -L -o amm https://github.com/lihaoyi/Ammonite/releases/download/1.6.8/2.13-1.6.8 && chmod +x amm