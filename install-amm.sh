#!/bin/bash

SCALA_VERSION=2.13
AMM_VERSION=2.3.8

mkdir -p ~/.ammonite && curl -L -o ~/.ammonite/predef.sc https://git.io/vHaKQ

cd ~/.local/bin
curl -L -o amm "https://github.com/lihaoyi/Ammonite/releases/download/${AMM_VERSION}/${SCALA_VERSION}-${AMM_VERSION}" && chmod +x amm
