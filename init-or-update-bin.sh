#!/bin/bash

sudo apt-get update

sudo apt-get install -y --force-yes build-essential make cmake libssl-dev libreadline-dev zlib1g-dev libglib2.0-dev

#sudo apt-get install -y --force-yes ubuntu-restricted-extras
sudo apt-get install -y --force-yes zsh wget curl git mercurial binutils bison xclip cloc tree zip p7zip-full rsync inotify-tools tmux shellcheck

chsh -s $(which zsh)

# sys monitor
sudo apt-get install -y --force-yes procps sysstat

# SBT
echo "install sbt"
curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt

# lein
#curl -s https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein && chmod 0755 ~/bin/lein
