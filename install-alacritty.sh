#!/bin/bash

cd /tmp

sudo apt-get install cmake libfreetype6-dev libfontconfig1-dev xclip

git clone https://github.com/jwilm/alacritty
cd alacritty

#rustup override set $(cat rustc-version)
cargo build --release

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
cp Alacritty.desktop ~/.local/share/applications
