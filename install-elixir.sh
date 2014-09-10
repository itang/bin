#!/bin/bash

VERSION=1.0.0
(
cd /tmp
rm elixir.zip

wget https://github.com/elixir-lang/elixir/archive/v1.0.0.zip -O elixir.zip &&
rm ~/dev-env/elixir

unzip elixir.zip -d ~/dev-env/ && 
cd ~/dev-env &&
ln -s elixir-1.0.0 elixir &&
cd elixir &&
make 

iex -v
)

