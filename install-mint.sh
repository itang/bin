#!/bin/bash


VERSION=0.3.1

mint version

(
  cd ~/.local/bin
  curl -L https://github.com/mint-lang/mint/releases/download/${VERSION}/mint-${VERSION}-linux -o mint && chmod +x mint
)

mint version
