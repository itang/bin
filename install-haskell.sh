#!/bin/bash

#sudo apt-get update

#sudo apt-get install haskell-platform


sudo add-apt-repository ppa:hvr/ghc
sudo apt-get update

sudo apt-get install ghc-7.10.2
sudo apt-get install cabal-install-1.22.4.0

ghc --version
