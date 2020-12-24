# ps

## Usage

    $ ps -ef
    $ ps -aux

    $ ps -mp 8969 -o THREAD,tid,time


    $ 启动时间
    ps -eo lstart

    运行多长时间.
    $ ps -eo etime
    $ ps -eo pid,lstart,etime | grep 5176
