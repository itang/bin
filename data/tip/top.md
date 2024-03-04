# top

## Usage

    查看指定进程(pid)
    $top -p 29087

    查看指定进程(pid) 线程
    $top -Hp 29087

    查看指定用戶下運行的程序
    $top -u someuser

    按CPU占比列排序
    top -o %CPU

    按内存占比排序
    top -o %MEM

    输出到文件
    top -b -n 1 > top.txt

    指定进程线程情况输出到文件
    top -b -H -n 1 -p xxx-pid  |> top_xxx-pid.txt