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
