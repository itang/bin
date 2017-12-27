# ulimit

## links

- https://yq.aliyun.com/articles/80530

## Usage

    查看系统的一些资源限制情况
    ulimit -a

    查看当前用户进程最大文件打开数
    ulimit -n

    当前shell设置
    ulimit -n 100000


    某个具体用户的资源加以限制的方法
    /etc/security/limits

    <domain> <type> <item> <value> 
    domain 表示用户或者组的名字，还可以使用 * 作为通配符。Type 可以有两个值，soft 和 hard。Item 则表示需要限定的资源，可以有很多候选值，如 stack，cpu，nofile 等等，分别表示最大的堆栈大小，占用的 cpu 时间，以及打开的文件数, e.g:
    * hard noflle 100
