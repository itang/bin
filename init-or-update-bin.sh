#!/bin/bash

sudo apt-get update

sudo apt-get install -y --force-yes build-essential 
#sudo apt-get install -y --force-yes ubuntu-restricted-extras
sudo apt-get install -y --force-yes wget curl git mercurial xclip cloc tree p7zip-full rsync inotify-tools

# SBT
echo "install sbt"
curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt

# lein 
curl -s https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein && chmod 0755 ~/bin/lein

