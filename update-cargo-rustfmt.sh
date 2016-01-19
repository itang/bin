#!/bin/bash

echo 'update...'
rm `which cargo-fmt`
cargo install rustfmt
