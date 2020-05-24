#!/bin/bash

d="$1"

if [[ -z "$d" ]]; then
    echo "empty input dir"
else
    mkdir "${d}" && cd "${d}" && code .
fi
