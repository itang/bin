#!/bin/bash

#wget -O - http://releases.ponylang.org/buildbot@lists.ponylang.org.gpg.key | sudo apt-key add -

#sudo add-apt-repository "deb http://releases.ponylang.org/apt ponyc main"

#sudo apt-get update

#sudo apt-get install ponyc


cd ~/dev-env
git clone git@github.com:CausalityLtd/ponyc.git --depth 1

cd ponyc

sudo apt-get install llvm-3.6
make config=release

