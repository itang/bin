#!/bin/bash

VERSION=0.10.10

cd /tmp

#rm VSCode-linux-x64-stable.zip


#wget https://az764295.vo.msecnd.net/stable/f291f4ad600767626b24a4b15816b04bee9a3049/VSCode-linux-x64-stable.zip


rm -rf ~/dev-env/VSCode-linux-x64
unzip VSCode-linux-x64-stable.zip -d ~/dev-env/

cd ~/dev-env/tools

rm code
ln -sfn ~/dev-env/VSCode-linux-x64/code code

