#!/bin/bash

# wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin
version=2.0.0-beta3

cd /tmp
wget https://github.com/ocaml/opam/releases/download/$version/opam-$version-x86_64-Linux

mv opam-$version-x86_64-Linux opam
sudo cp opam /usr/local/bin/ && sudo chmod +x /usr/local/bin/opam

opam --version
