#!/bin/bash

(
rm go1.3.linux-amd64.tar.gz
wget http://golang.org/dl/go1.3.linux-amd64.tar.gz
tar zxvf go1.3.linux-amd64.tar.gz -C ~/dev-env

go version
)
