#!/bin/bash

export http_proxy=localhost:8087
curl -s http://www.rust-lang.org/rustup.sh | sudo sh
rustc --version

