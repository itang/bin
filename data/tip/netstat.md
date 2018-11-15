# netstat

## Usage

    按连接状态统计:
    $ netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'

    $ netstat -tanple 2>&1 | grep LISTEN | grep 4000| awk '{print($0)}' | awk '{print $NF}' | awk -F "/" '{print $1}' | xargs -I {} ps -mp {} -o THREAD,tid,time
