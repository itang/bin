# tcpdump

## Usage

    tcpdump -D 命令列出可以抓包的网络接口
    $ sudo tcpdump -D

    其中特殊接口 any 可用于抓取所有活动的网络接口的数据包
    $ sudo tcpdump -i any

    -c 选项可以用于限制 tcpdump 抓包的数量
    $ sudo tcpdump -i any -c 5

    使用 IP 地址和端口号更便于分析问题；用 -n 选项显示 IP 地址，-nn 选项显示端口号
    $ sudo tcpdump -i any -c 5 -nn


    $ tcpdump -i enp4s0 host baidu.com

    $ tcpdump -S -i en0 host testServer

    $ tcpdump -e -i eth0 host testServer.cn.ibm.com

    $ sudo tcpdump -i lo port 8080


    tcpdump filter for HTTP GET
    $sudo tcpdump -s 0 -A 'tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420'

    tcpdump filter for HTTP POST
    $sudo tcpdump -s 0 -A 'tcp dst port 80 and (tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x504f5354)'

    Monitor HTTP traffic including request and response headers and message body 
    $tcpdump -A -s 0 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'
    $tcpdump -X -s 0 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'


    80 loop POST
    $ sudo tcpdump -s 0 -A -i lo 'tcp dst port 80 and (tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x504f5354)' 

    $ man tcpdump

## tcp 报文分析

`08:41:13.729687 IP 192.168.64.28.22>192.168.64.1.41916:Flags[P.], seq 196:568, ack 1, win 309, options [nop,nop,TS val 117964079 ecr 816509256], length 372`

具体的字段根据不同的报文类型会有不同，但上面这个例子是一般的格式形式。

第一个字段 08:41:13.729687 是该数据报文被抓取的系统本地时间戳。

然后，IP 是网络层协议类型，这里是 IPv4，如果是 IPv6 协议，该字段值是 IP6。

192.168.64.28.22 是源 ip 地址和端口号，紧跟其后的是目的 ip 地址和其端口号，这里是 192.168.64.1.41916。

在源 IP 和目的 IP 之后，可以看到是 TCP 报文标记段 Flags [P.]。该字段通常取值如下：

值标志类型描述SSYNConnection StartFFINConnection FinishPPUSHData pushRRSTConnection reset.ACKAcknowledgment

该字段也可以是这些值的组合，例如 [S.] 代表 SYN-ACK 数据包。

接下来是该数据包中数据的序列号。对于抓取的第一个数据包，该字段值是一个绝对数字，后续包使用相对数值，以便更容易查询跟踪。例如此处 seq 196:568 代表该数据包包含该数据流的第 196 到 568 字节。

接下来是 ack 值：ack 1。该数据包是数据发送方，ack 值为 1。在数据接收方，该字段代表数据流上的下一个预期字节数据，例如，该数据流中下一个数据包的 ack 值应该是 568。

接下来字段是接收窗口大小 win 309，它表示接收缓冲区中可用的字节数，后跟 TCP 选项如 MSS（最大段大小）或者窗口比例值。更详尽的 TCP 协议内容请参考 Transmission Control Protocol(TCP) Parameters。

最后，length 372 代表数据包有效载荷字节长度。这个长度和 seq 序列号中字节数值长度是不一样的。

## 过滤数据包

tcpdump 有很多参数选项可以设置数据包过滤规则，例如根据源 IP 以及目的 IP 地址，端口号，协议等等规则来过滤数据包

### 协议

在命令中指定协议便可以按照协议类型来筛选数据包, 如下命令只要抓取 ICMP 报文

$ sudo tcpdump-i any -c5 icmp

### 主机

用 host 参数只抓取和特定主机相关的数据包

$ sudo tcpdump -i any -c5 -nn host 54.204.39.132

### 端口号

tcpdump 可以根据服务类型或者端口号来筛选数据包. 例如，抓取和 HTTP 服务相关的数据包:
$ sudo tcpdump -i any host iotnative.com port 80

### IP 地址/主机名

根据源 IP 地址或者目的 IP 地址或者主机名来筛选数据包. 使用src 抓取源 IP 地址为 192.168.122.98 的数据包

$ sudo tcpdump -i any -c5 -nn src 192.168.122.98

使用 dst 就是按目的 IP/主机名来筛选数据包

$ sudo tcpdump -i any -c5 -nn dst 192.168.122.98

### 多条件筛选

可以使用多条件组合来筛选数据包，使用 and 以及 or 逻辑操作符来创建过滤规则。例如，筛选来自源 IP 地址 192.168.122.98 的 HTTP 数据包

$ sudo tcpdump -i any -c5 -nn src 192.168.122.98 and port 80

以使用括号来创建更为复杂的过滤规则，但在 shell 中请用引号包含你的过滤规则以防止被识别为 shell 表达式

$ sudo tcpdump -i any -c5 -nn "port 80 and (src 192.168.122.98 or src 54.204.39.132)"

## 检查数据包内容

tcpdump 提供了两个选项可以查看数据包内容，`-X` 以十六进制打印出数据报文内容，`-A` 打印数据报文的 ASCII 值

`$ sudo tcpdump -i any -c10 -nn -A port 80`

## 保存抓包数据

使用 -w 选项来保存数据包而不是在屏幕上显示出抓取的数据包

`$ sudo tcpdump -i any -c10 -nn -w webserver.pcap port 80`

该命令将抓取的数据包保存到文件 webserver.pcap。后缀名 `pcap` 表示文件是抓取的数据包格式

如果想有一些反馈来提示确实抓取到了数据包，可以使用 `-v` 选项

tcpdump 将数据包保存在二进制文件中，所以不能简单的用文本编辑器去打开它。使用 `-r` 选项参数来阅读该文件中的报文内容

`$ tcpdump -nn -r webserver.pcap`

还可以使用我们讨论过的任何过滤规则来过滤文件中的内容，就像使用实时数据一样

`$ tcpdump -nn -r webserver.pcap src 54.204.39.132`

## 备注

tcpdump 命令行工具为分析网络流量数据包提供了强大的灵活性。如果需要使用图形工具来抓包请参考 Wireshark。

Wireshark 还可以用来读取 tcpdump 保存的 pcap 文件。你可以使用 tcpdump 命令行在没有 GUI 界面的远程机器上抓包然后在 Wireshark 中分析数据包

## Links

* https://danielmiessler.com/study/tcpdump/#basic-communication 在 Linux 命令行中使用 tcpdump 抓包

* https://zhuanlan.zhihu.com/p/48532128