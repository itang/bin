#!/bin/bash

#sudo add-apt-repository ppa:staticfloat/juliareleases
echo "PREPARE: sudo add-apt-repository ppa:staticfloat/juliareleases"

sudo apt-get update
sudo apt-get install julia

julia --version
