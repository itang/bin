#!/bin/bash

# export http_proxy=localhost:8087
curl -s https://static.rust-lang.org/rustup.sh | sudo sh
rustc --version

