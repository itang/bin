# openssl

## Usage

    校验证书信息
    $ openssl x509 -in  /etc/letsencrypt/archive/xxx.cn/cert1.pem -noout -text
    > X509v3 Subject Alternative Name:
    DNS:*.xxx.cn
