#!/bin/bash

sudo apt-get install zsh
zsh --version

curl -L http://install.ohmyz.sh | sh
chsh -s $(which zsh)
