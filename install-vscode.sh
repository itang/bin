#!/bin/bash

VERSION=0.10.1-release

cd /tmp

rm VSCode-linux64.zip

wget https://az764295.vo.msecnd.net/public/$VERSION/VSCode-linux64.zip


rm -rf ~/dev-env/VSCode-linux-x64
unzip VSCode-linux64.zip -d ~/dev-env/

cd ~/dev-env/tools

rm code
ln -s ~/dev-env/VSCode-linux-x64/Code code
