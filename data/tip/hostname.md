# hostname

## tips

    修改主机名
    vim /etc/sysconfig/network
    HOSTNAME=xxxx

    查看本机的名称
    $ hostname

    查看本机名对应的ip地址
    $ hostname -i

    将主机名绑定IP
    vim /etc/hosts
    192.168.100.175 testname
