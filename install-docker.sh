#!/bin/bash

# link(http://docs.docker.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit)
echo "wget -qO- https://get.docker.com/gpg | sudo apt-key add -"
wget -qO- https://get.docker.com/ | sh
docker --version;
