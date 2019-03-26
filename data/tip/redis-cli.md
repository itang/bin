# Redis

## Usage

    $ redis-cli -a password -n 1

    $ redis-cli KEYS "prefix:*" | xargs redis-cli DEL
