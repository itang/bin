# openssl

## Usage

    校验证书信息
    $ openssl x509 -in  /etc/letsencrypt/archive/xxx.cn/cert1.pem -noout -text
    > X509v3 Subject Alternative Name:
    DNS:*.xxx.cn

    显示证书信息
    openssl s_client -showcerts -connect www.domain.com:443