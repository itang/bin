#!/bin/bash

# curl
echo "install curl"
sudo apt-get install curl

# git
sudo apt-get install git

#
sudo apt-get install xclip

# SBT
echo "install sbt"
curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt

