# chkconfig

## Usage

    $ chkconfig --list
    $ chkconfig --list redis
    $ chkconfig add redis
    $ chkconfig on redis

    $ chkconfig del redis
    $ chkconfig redis off
    $ chkconfig --level 345 nscd off


    $ sudo /etc/init.d/redis start
