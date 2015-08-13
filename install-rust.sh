#!/bin/bash

#curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
curl -sf -L https://static.rust-lang.org/rustup.sh | sh

rustc --version