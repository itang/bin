# Redis

## Usage

    $ redis-cli -a password -n 1

    $ redis-cli KEYS "prefix:*" | xargs redis-cli DEL

    $ bin/redis-cli -h host1 -n 1 -a password info replication

    $ .\redis-cli.exe -a foobared monitor
    $ redis-cli -a foobared -n 1  monitor | grep somekey

    Lists the currently active channels, If no pattern is specified, all the channels are listed
    $ PUBSUB CHANNELS [pattern]
