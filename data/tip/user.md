# user

Linux 用户管理

## useradd

    创建用户
    $ sudo useradd -m itang -s /bin/bash

## passwd

    修改密码
    $ passwd $USER

## usermod

    加入group
    $ sudo usermod -aG sudo $USER

## chown

    修改目录的owner
    $ chown -R itang:itang datadir
