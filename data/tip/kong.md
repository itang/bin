# Kong

## Usage

    $ kong reload
    $ docker exec -it kong kong reload

    $ kong start --conf /path/to/kong.conf

    debug mode
    $ kong start -c <kong.conf> --vv

    $ kong start -c kong.conf --nginx-conf custom_nginx.template

    $ kong check <path/to/kong.conf>

## Config

    default working directory: `/usr/local/kong`

## Misc

    $ docker run --rm -e "KONG_DATABASE=cassandra" -e "KONG_PG_HOST=kong-database" -e "KONG_CASSANDRA_CONTACT_POINTS=DB_HOST" kong:0.12.3 kong migrations up
