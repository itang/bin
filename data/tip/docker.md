# docker

## Usage

    $ docker stats

    $ docker run -ti -name container-name image-id /bin/bash
    $ docker run -ti -name container-name -d image-id
    $ docker run -ti -name container-name -p 4000:4000 -d image-id
x
    $ docker run --rm -ti --net=host postgresql /bin/bash
    $ docker run -it --name mypostgres -p 5432:5432 postgres
    $ docker run -it --name mypostgres -p 5432:5432 -d postgres

    $ docker run -ti --rm --name some-mysql -e MYSQL_ROOT_PASSWORD=123456 mysql
    $ docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

    # 指定link, network, environment, port mapping
    $ docker run --rm --network="testkong_default" --link kong-database:kong-database -e "KONG_DATABASE=cassandra" -e "KONG_PG_HOST=kong-database" -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database" kong:latest kong migrations up


    $ docker restart example
    $ docker start example
    $ docker attach example
    $ docker exec -it mypostgres /bin/bash

    $ docker exec -it mypostgres /bin/bash

    $ docker logs --tail=20 -f example

    $ docker cp xxx_kong_1:/etc/kong .

    $ docker ps
    $ docker ps -a

    $ docker inspect kong | jq ".[].State.Health"

    $ docker build -t image:latest .
    $ docker push image:latest
    $ docker pull image:latest
    $ docker pull nginx

    $ docker rm container-id
    $ docker rm container-name

    $ docker images
    $ docker rmi image-id

    `dangling` images == `UNTAGGED` IMAGES
    $ docker rmi $(docker images -f "dangling=true" -q)
    $ docker rmi $(docker images | grep "^<none>" | awk '{print $3}')

    $ docker save mynewimage > /tmp/mynewimage.tar
    $ docker load < /tmp/mynewimage.tar

    Disconnect a container from a network
    $ docker network disconnect multi-host-network container1
    $ docker network disconnect --force host CONTAINER
    $ docker network disconnect --force bridge CONTAINER

    This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all build cache
    $ docker system prune

    Remove all unused images not just dangling ones(删除清理未运行容器和未关联容器的镜像的资源)
    This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all volumes not used by at least one container
        - all images without at least one container associated to them
        - all build cache
    --volumes flag when running the command to prune volumes as well
    $ docker system prune -a
    $ docker system prune -a --volumes

    $ docker system df


    docker run --detach \
           --name bluedoc \
           --publish 443:443 --publish 80:80 \
           --restart always \
           --volume ${bluedoc_root}/postgresql:/var/lib/postgresql \
           --volume ${bluedoc_root}/redis:/var/lib/redis \
           --volume ${bluedoc_root}/elasticsearch:/usr/share/elasticsearch/data \
           --volume ${bluedoc_root}/storage:/home/app/bluedoc/storage \
           --volume ${bluedoc_root}/data:/home/app/bluedoc/data \
           --volume ${bluedoc_root}/log:/home/app/bluedoc/log \
           --volume ${bluedoc_root}/tmp:/home/app/bluedoc/tmp \
           --end-file ${bluedoc_root}/production.env \
           bluedoc/bluedoc:latest

## Dockerfile

    e.g.
        FROM scratch
        COPY main /
        ENTRYPOINT ["/main"]

## docker-compose.yml

    e.g.
      version: "2"
      services:
        dict:
          image: ubuntu
          restart: unless-stopped
          #ports:
          # - "8000:8000"
          working_dir: /app
          volumes:
           - ./dict/rustversion:/app
          command: ./rust_rocket_version
          links:
           - redis
          environment:
           - ROCKET_ENV=prod
           - ROCKET_PORT=8080
           - ROCKET_REDIS_URL=redis://redis/

## /etc/docker/daemon.json

    {
        "graph":"/data/docker",
        "dns": ["114.114.114.114", "8.8.8.8"],
        "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
    }

## more on containers

### ubuntu

```bash
apt-get update
apt-get install net-tools
```

### centos

```bash
yum install net-tools
```
