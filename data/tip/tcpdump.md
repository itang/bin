# tcpdump

## Usage

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

## Links

https://danielmiessler.com/study/tcpdump/#basic-communication
