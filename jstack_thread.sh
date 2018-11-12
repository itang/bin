#!/bin/bash

#see: http://www.iteye.com/topic/1114219

#jstack $1 | grep `int2hex $2` -A 10
set -x

jstack $1 | grep `printf "%x" $2` -A "${3-10}"
