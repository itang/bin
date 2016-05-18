#!/bin/bash

VERSION=1.0.0

cd /tmp

rm vscode-amd64.deb

wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode-amd64.deb

sudo dpkg -i vscode-amd64.deb
