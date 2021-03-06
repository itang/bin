# Linux

## limits

    $ cat /proc/sys/kernel/pid_max
    $ sysctl kernel.pid_max
    $ sysctl kernel.pid_max=4194304

    $ file descriptors
    $ ulimit -n

    max user processes
    $ ulimit -a
    max user processes              (-u) 500000
    $ ulimit -u

    调整max user processes
    临时:
    $ ulimit -u 10240

    持久:
    /etc/security/limits.conf
    hadoop - nproc 500000


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

## swappiness

link: https://askubuntu.com/questions/103915/how-do-i-configure-swappiness

```
$ cat /proc/sys/vm/swappiness
60
$ echo "vm.swappiness = 10" > /etc/sysctl.conf
```

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

### groups

    $ groups user1

### access your files as the www-data user

    $ sudo su -l www-data -s /bin/bash

## 压缩与解压

### .a

$ tar xv file.a

### .z

$ uncompress file.Z

### .gz

$ gunzip file.gz

$ gzip -d file.gz

### .bz2

$ gunzip2 file.bz2

### .tar.Z

$ tar xvZf file.tar.Z

$ compress -dc file.tar.Z | tar xvf -

### .tar.gz/.tgz

$ tar xvzf file.tar.gz

$ gzip -dc file.tar.gz | tar xvf -

### .tar.bz2

$ tar xvIf file.tar.bz2

$ bzip2 -dc file.tar.bz2 | xvf -

### .cpio.gz/.cgz

$ gzip -dc file.cgz | cpio -div

### .cpio/cpio

$ cpio -div file.cpio

$ cpio -divc file.cpio

### .以.rpm为扩展名的文件安装

$ rpm -i file.rpm

### 以.rpm为扩展名的文件解压缩

$ rpm2cpio file.rpm | cpio -div

### 以.deb为扩展名的文件安装

$ dpkg -i file.deb

### 以.deb为扩展名的文件解压缩

$ dpkg-deb --fsys-tarfile file.deb | tar xvf - ar p

file.deb data.tar.gz | tar xvzf -

### .以.zip为扩展名的文件:

$ unzip file.zip
