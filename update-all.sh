#!/bin/bash

gits="$HOME/workspace/load-imei $HOME/tang/load-imei $HOME/workspace/tangcloud $HOME/tang/tangcloud $HOME/tang/now $HOME/workspace/now $HOME/workspace/tests $HOME/tang/tests $HOME/workspace/nginxa $HOME/tang/nginxa $HOME/bin"
for g in $gits; do
    (
        echo "git pull: $g"
        cd "$g"
        git pull
    )
done

export SDKMAN_DIR="/home/itang/.sdkman"
[[ -s "/home/itang/.sdkman/bin/sdkman-init.sh" ]] && source "/home/itang/.sdkman/bin/sdkman-init.sh"
sdk selfupdate

rustup update nightly
# cargo install --git https://github.com/ogham/exa
cargo install-update -a

#opam update
#opam upgrade
