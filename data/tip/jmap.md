# jmap

## Usage

    $ jmap -heap pid

    查看heap情况，如查看存活对象列表
    $ jmap -histo:live pid | grep com.company | less

    dump内存用来分析
    $ jmap -dump:file=test.bin pid

    使用jmap手工触发fullGC
    $ jmap -histo:live <pid>
    $ jmap -dump:live,file=dump_001.bin PID 

    gc日志输出[Full GC (Heap Inspection Initiated GC) 

## Q

see: https://blog.csdn.net/zqz_zqz/article/details/79540790

> 新版的Linux系统加入了 ptrace-scope 机制. 这种机制为了防止用户访问当前正在运行的进程的内存和状态, 而一些调试软件本身就是利用 ptrace 来进行获取某进程的内存状态的(包括GDB),所以在新版本的Linux系统, 默认情况下不允许再访问了， 可以临时开启：
>
>echo 0 > /proc/sys/kernel/yama/ptrace_scope

>永久更改：
>
>vi  /etc/sysctl.d/10-ptrace.conf
>
>kernel.yama.ptrace_scope = 0
