#!/bin/bash

racer --version
echo 'update...'

rm `which racer`
cargo install racer && racer --version
