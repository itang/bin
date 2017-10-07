#!/bin/bash

curl -sSL https://get.haskellstack.org/ | sh

echo ""
echo 'tip: export PATH="\$HOME/.local/bin:$PATH"'

stack install ghc-mod hlint intero QuickCheck stack-run
