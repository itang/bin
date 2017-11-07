#!/bin/bash

buffalo version

go get -u -v github.com/gobuffalo/buffalo

go install -v github.com/gobuffalo/buffalo/buffalo

buffalo version
