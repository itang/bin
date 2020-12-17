# Redis

## Usage

    $ redis-cli -a password -n 1

    $ redis-cli KEYS "prefix:*" | xargs redis-cli DEL

    $ bin/redis-cli -h host1 -n 1 -a password info replication

    Lists the currently active channels, If no pattern is specified, all the channels are listed
    $ PUBSUB CHANNELS [pattern]
