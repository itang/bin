#!/bin/bash 

cd /tmp

wget https://raw.github.com/technomancy/leiningen/stable/bin/lein
mv lein ~/.local/bin/
chmod +x ~/.local/bin/lein

lein --version

