#!/bin/bash

## @see http://alphydan.svbtle.com/elm-lang-on-ubuntu-14-04

VERSION=0.15.1

ghc --version

sudo apt-get install libtinfo-dev

cd ~/dev-env/

# if you are on windows, or some other place without curl, just download this file manually
curl https://raw.githubusercontent.com/elm-lang/elm-platform/master/installers/BuildFromSource.hs > BuildFromSource.hs

runhaskell BuildFromSource.hs $VERSION
