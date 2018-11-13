#!/bin/bash

jps | awk '{if($2 != "Jps") print $1}' | xargs kill
