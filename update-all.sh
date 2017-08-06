#!/bin/bash


gits="$HOME/workspace/load-imei $HOME/workspace/tangcloud $HOME/workspace/tests $HOME/bin"
for g in $gits
do
    (
        echo "git pull: $g";
        cd "$g";
        git pull
    )
done


export SDKMAN_DIR="/home/itang/.sdkman"
[[ -s "/home/itang/.sdkman/bin/sdkman-init.sh" ]] && source "/home/itang/.sdkman/bin/sdkman-init.sh"
sdk selfupdate


rustup update nightly 
# cargo install --git https://github.com/ogham/exa
cargo install-update -a


opam update
opam upgrade
