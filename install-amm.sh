#!/bin/bash

SCALA_VERSION=3.1
AMM_VERSION=2.5.2

mkdir -p ~/.ammonite && curl -L -o ~/.ammonite/predef.sc https://git.io/vHaKQ

cd ~/.local/bin || exit 1
curl -L -o amm "https://github.com/lihaoyi/Ammonite/releases/download/${AMM_VERSION}/${SCALA_VERSION}-${AMM_VERSION}" && chmod +x amm
