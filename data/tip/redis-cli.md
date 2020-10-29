# Redis

## Usage

    $ redis-cli -a password -n 1

    $ redis-cli KEYS "prefix:*" | xargs redis-cli DEL

    $ bin/redis-cli -h host1 -n 1 -a password info replication
