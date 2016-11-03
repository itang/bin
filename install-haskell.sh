#!/bin/bash


# https://www.haskell.org/downloads/linux
# cabal ghc
udo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install ghc

# https://docs.haskellstack.org/en/stable/README/
# stack
curl -sSL https://get.haskellstack.org/ | sh


# cabals
cabal update 
cabal install happy
cabal install ghc-mod
