#!/bin/bash

VERSION=1.2.3
(
cd /tmp
rm Precompiled.zip

wget https://github.com/elixir-lang/elixir/releases/download/v${VERSION}/Precompiled.zip
rm -rf ~/dev-env/elixir
mkdir -p ~/dev-env/elixir

unzip Precompiled.zip -d ~/dev-env/elixir/ && ~/dev-env/elixir/bin/iex -v
)
