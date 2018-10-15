#!/bin/bash

sudo apt-get update

sudo apt-get install -y --force-yes build-essential software-properties-common make cmake openssl perl pkg-config
sudo apt-get install -y --force-yes build-essential libpcre3 libreadline-dev libsqlite3-dev libpq-dev libmysqlclient-dev libssl-dev libyaml-dev zlib1g-dev libglib2.0-dev webkit2gtk-4.0

#sudo apt-get install -y --force-yes ubuntu-restricted-extras
sudo apt-get install -y --force-yes zsh wget curl git mercurial binutils bison xclip cloc tree zip p7zip-full rsync inotify-tools tmux shellcheck lnav graphviz
sudo apt-get install -y --force-yes lm-sensors hddtemp linux-tools-generic

sudo apt-get install -7 --force-yes clang llvm
# sys monitor
sudo apt-get install -y --force-yes procps sysstat

chsh -s "$(which zsh)"
