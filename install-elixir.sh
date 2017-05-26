#!/bin/bash


# link: https://elixir-lang.org/install.html

cd /tmp

wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt-get update
sudo apt-get install esl-erlang

sudo apt-get install elixir


#VERSION=1.4.4

#(
#  cd /tmp
#  rm Precompiled.zip
 
#  wget https://github.com/elixir-lang/elixir/releases/download/v${VERSION}/Precompiled.zip && rm -rf ~/dev-env/elixir
#  mkdir -p ~/dev-env/elixir
 
#  unzip Precompiled.zip -d ~/dev-env/elixir/ && ~/dev-env/elixir/bin/iex -v
#)

