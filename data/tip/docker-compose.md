# docker-compose

## Usage

    docker-compose exec activemq /bin/bash
    docker-compose logs -f --tail=200 activemq
    docker-compose exec activemq /bin/bash -c "tail -f -n 1000 /var/log/activemq/activemq.log"

## install

links: https://docs.docker.com/compose/install/#install-compose

    $ sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    $ sudo chmod +x /usr/local/bin/docker-compose