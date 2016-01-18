#!/bin/bash

sudo apt-get install zsh
zsh --version

# oh my zsh
curl -L http://install.ohmyz.sh | sh


# zim
## https://github.com/Eriner/zim
#git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim

#setopt EXTENDED_GLOB
#for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
#  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
#  ( print -n "$(<${template_file})\n$(<${user_file})" >! ${user_file} ) 2>/dev/null
#done

chsh -s $(which zsh)

#source ${ZDOTDIR:-${HOME}}/.zlogin
