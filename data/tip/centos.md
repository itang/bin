# centos

## Centos 7

links: http://139.199.4.119/book/learn/linux/centos.html

### firewalld

    systemctl start firewalld
    systemctl status firewalld
    systemctl disable firewalld
    systemctl stop firewalld
    systemctl is-enabled firewalld.service

    $ firewall-cmd --zone=public --list-ports
    $ firewall-cmd --get-active-zones
    $ firewall-cmd --reload

    添加
    $ firewall-cmd --zone=public --add-port=80/tcp --permanent    （--permanent永久生效，没有此参数重启后失效）
    重新载入
    $ firewall-cmd --reload
    查看
    $ firewall-cmd --zone= public --query-port=80/tcp
    删除
    $ firewall-cmd --zone= public --remove-port=80/tcp --permanent

## 时区时间

    $ timedatectl
    $ timedatectl list-timezones # 列出所有时区
    $ timedatectl set-local-rtc 1 # 将硬件时钟调整为与本地时钟一致, 0 为设置为 UTC 时间

    $ timedatectl set-timezone Asia/Shanghai # 设置系统时区为上海
    $ cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

    $ sudo yum install ntp
    $ sudo ntpdate us.pool.ntp.org
