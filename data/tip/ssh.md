# ssh

## Usage

    $ ssh -p 22 user@host
    $ ssh -p 12367 -fNTL 8162:localhost:8161 user@host

    $ ssh USER@REMOTE_HOST "cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_rsa.pub
     chmod 700 ~/.ssh
     chmod 600 ~/.ssh/authorized_keys

    $ 指定证书文件登录
    ssh -i xxx.pem user@host

