# trace

## Introduce

strace 命令常用来跟踪进程执行时的系统调用和所接收的信号。在 Linux 世界，进程不能直接访问硬件设备，当进程需要访问硬件设备（比如读取磁盘文件，接收网络数据等等）时，必须由用户态模式切换至内核态模式，通过系统调用访问硬件设备。strace 可以跟踪到一个进程产生的系统调用，包括参数、返回值和执行消耗的时间

`strace -ff -o ./echo_server deno run -A ./echo_server.ts`

`-ff`：如果提供 `-o filename`，则所有进程的跟踪结果输出到相应的 `filename.pid` 中，`pid` 是各进程的进程号。

`-o filename`：将 strace 的输出写入文件 filename。

`pstree -ap | grep deno`

`netstat -natp | grep deno`

## Usage

strace