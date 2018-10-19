#!/bin/bash

name=$1

if [ "$1" = "" ]; then
  name=some-mysql
fi

docker run -it --link ${name}:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
