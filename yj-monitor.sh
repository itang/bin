#!/bin/bash

# sensors-detect

watch -d -n 1 'echo free;mpstat;echo;free -m;echo temp; sudo hddtemp /dev/sd? ;echo; sensors; echo; cat /proc/cpuinfo | grep -i mhz'