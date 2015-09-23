#!/bin/bash

VERSION=0.8.0

cd /tmp

rm VSCode-linux-x64.zip
wget https://az764295.vo.msecnd.net/public/$VERSION/VSCode-linux-x64.zip
unzip VSCode-linux-x64.zip -d ~/dev-env/
