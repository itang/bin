#!/bin/bash

echo 'update...'
rm `which cargo-fmt`
rm `which rustfmt`

cargo install rustfmt
