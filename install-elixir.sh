#!/bin/bash

VERSION=1.0.4
(
cd /tmp
rm elixir.zip

wget https://github.com/elixir-lang/elixir/archive/v${VERSION}.zip -O elixir.zip &&
rm ~/dev-env/elixir

unzip elixir.zip -d ~/dev-env/ &&
cd ~/dev-env &&
ln -s elixir-${VERSION} elixir &&
cd elixir &&
make

iex -v
)
