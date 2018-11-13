#!/bin/bash

echo "before..."
jps -lv


jps | awk '{if($2 != "Jps") print $1}' | xargs -r kill -9

echo "after..."
jps -lv
