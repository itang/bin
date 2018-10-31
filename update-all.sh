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
$HOME/tang/my_study
$HOME/workspace/my_study
$HOME/bin"

for g in $gits; do
    if [ -d "$g" ]; then
        (
        echo "git pull: $g"
        cd "$g"
        git pull &
        )
    else 
        echo "no exists, ignore $g"
    fi
done

echo "rust"
(
rustup update stable
# cargo install --force --git https://github.com/ogham/ex
cargo install-update -a
) &
#opam update
#opam upgrade

#echo "elixir"
#(cd ~/dev-env/elixir && git pull && make clean compile) &
#(cd ~/dev-env/elixir && git pull && make clean test)

#gopackages="
#github.com/tockins/realize
#neugram.io/ng
#github.com/kode4food/sputter/cmd/sputter
#github.com/goby-lang/goby"
#for x in $gopackages; do
#    go get -u -v "$x" &
#done

wait
