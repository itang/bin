# Linux

## locale

locale is set to UTF-8

```bash
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

## network

    $ sysctl -A | grep keep
    net.ipv4.tcp_keepalive_intvl = 75
    net.ipv4.tcp_keepalive_probes = 9
    net.ipv4.tcp_keepalive_time = 7200

## user

Linux 用户管理

### useradd

    创建用户
    $ sudo useradd -m itang -s /bin/bash

### passwd

    修改密码
    $ passwd $USER

### usermod

    加入group
    $ sudo usermod -aG sudo $USER

### chown

    修改目录的owner
    $ chown -R itang:itang datadir
