# systemctl

## links

- https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units

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
