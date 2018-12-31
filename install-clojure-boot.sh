#!/bin/bash

cd /tmp
wget https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh
cp -r boot.sh ~/.local/bin/boot
chmod +x ~/.local/bin/boot
boot --version
