# certbot

## Usage

    $ certbot(or path/certbot-auto) certonly --webroot -w /path/your-web-root -d your-domain.com -d www.your-domain.com

    $ certbot renew --dry-run --force-renew
    $ certbot renew --force-renew

    link: https://community.letsencrypt.org/t/renew-incorrect-validation-certificate-for-tls-sni-01-challenge/64865/3
    $ certbot renew --preferred-challenges http
