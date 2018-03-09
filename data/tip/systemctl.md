# systemctl

## links

- https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units
- https://gobuffalo.io/docs/systemd#install-your-buffalo-app
- https://unix.stackexchange.com/questions/200654/executing-chdir-before-starting-systemd-service

## Usage

    $ systemctl list-units --all | grep redis
    $ systemctl list-units
    $ systemctl list-units --all --state=inactive
    $ systemctl list-units --all
    $ systemctl list-unit-files

    $ systemctl enable application.service
    $ systemctl disable application.service
    $ systemctl is-failed application.service
    $ systemctl is-enabled nginx
    $ systemctl show sshd.service
    $ systemctl is-active application.service
    $ systemctl status application.service

    $ systemctl start nginx.service
    $ systemctl stop application.service
    $ systemctl restart application.service
    $ systemctl reload-or-restart application.service

    $ systemctl list-dependencies sshd.service

    $ systemctl edit nginx.service

    $ systemctl daemon-reload

## Service

- /lib/systemd/system/myapp.service

```
[Unit]
Description=My super app
After=mysql.service

[Service]
ExecStart=/usr/local/bin/myapp
WorkingDirectory=/usr/loca
User=root
Group=root
UMask=007

[Install]
WantedBy=multi-user.target
```

- /etc/systemd/system/myapp.service.d/override.conf

```
[Service]
Environment="ADDR=0.0.0.0"
Environment="GO_ENV=production"
Environment="SESSION_SECRET=kqdjmlkajdùméa]$"
```
