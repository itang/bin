# netstat

## Usage

    按连接状态统计:
    $ netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
