#!/bin/bash

# set -x

## gits
gits="$HOME/workspace/load-imei
$HOME/tang/load-imei
$HOME/workspace/tangcloud
$HOME/tang/tangcloud
$HOME/tang/now
$HOME/workspace/now
$HOME/workspace/tests
$HOME/tang/tests
$HOME/workspace/nginxa
$HOME/tang/nginxa
$HOME/bin"

for g in $gits; do
    if [ -d "$g" ]; then
        (
        echo "git pull: $g"
        cd "$g"
        git pull
        )
    else 
        echo "no exists, ignore $g"
    fi
done

echo "sdkman"
export SDKMAN_DIR="/home/itang/.sdkman"
[[ -s "/home/itang/.sdkman/bin/sdkman-init.sh" ]] && source "/home/itang/.sdkman/bin/sdkman-init.sh"
sdk selfupdate

echo "rust"
rustup update nightly
# cargo install --force --git https://github.com/ogham/ex
cargo install-update -a

#opam update
#opam upgrade

echo "elixir"
(cd ~/dev-env/elixir && git pull && make clean test)

gopackages="neugram.io/ng
github.com/goby-lang/goby"
for x in $gopackages; do
    go get -u -v "$x"
done
