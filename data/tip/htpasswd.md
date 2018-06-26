# htpasswd

apache2-utils


## Usage

    $ sudo htpasswd -c /etc/apache2/.htpasswd user1

    Create additional user-password pairs. Omit the -c flag because the file already exists:
    $ sudo htpasswd /etc/apache2/.htpasswd user2

## Config Nginx

```
location /status {
    auth_basic           “Administrator’s Area”;
    auth_basic_user_file /etc/apache2/.htpasswd;
}
```
