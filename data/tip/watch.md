# watch

## Usage

    watch -d -n 1 "echo free;mpstat;echo;free -m;echo temp; sudo hddtemp /dev/sd? ;echo; sensors; echo; cat /proc/cpuinfo | grep -i mhz"
    watch -d -n 1 docker-compose ps
    watch -d -n 1 curl http://localhost:8000
    watch -d -n 1 "netstat -tanple | grep 8000"
