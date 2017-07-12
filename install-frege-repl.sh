#!/bin/bash

VERSION=1.4-SNAPSHOT

cd /tmp

wget https://github.com/Frege/frege-repl/releases/download/${VERSION}/frege-repl-${VERSION}.zip

rm -rf ~/dev-env/frege-repl-${VERSION}

unzip frege-repl-${VERSION}.zip -d ~/dev-env/

cd ~/dev-env

rm frege-repl

ln -s frege-repl-${VERSION} frege-repl
