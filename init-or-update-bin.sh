#!/bin/bash

# curl
echo "install curl"
sudo apt-get install curl

# git
sudo apt-get install git

# hg
sudo apt-get install mercurial

# xclip
sudo apt-get install xclip

# cloc
sudo apt-get install cloc

# tree
sudo apt-get install tree

# SBT
echo "install sbt"
curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt

# lein 
curl -s https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein && chmod 0755 ~/bin/lein

