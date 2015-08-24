#!/bin/bash

VERSION=1.0.5
(
cd /tmp
rm Precompiled.zip

wget https://github.com/elixir-lang/elixir/releases/download/v${VERSION}/Precompiled.zip && rm ~/dev-env/elixir && mkdir -p ~/dev-env/elixir

unzip Precompiled.zip -d ~/dev-env/elixir/ && ~/dev-env/elixir/bin/iex -v
)
