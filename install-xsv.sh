#!/bin/bash

cd /tmp
git clone git://github.com/BurntSushi/xsv
cd xsv
cargo build --release
cp target/release/xsv ~/dev-env/tools/

