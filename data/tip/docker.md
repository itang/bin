# docker

## Usage

    $ docker run -ti -name container-name image-id /bin/bash
    $ docker run -ti -name container-name -d image-id
    $ docker run -ti -name container-name -p 4000:4000 -d image-id
    $ docker run --rm -ti --net=host postgresql /bin/bash
    $ docker run -it --name mypostgres -p 5432:5432 postgres
    $ docker run -it --name mypostgres -p 5432:5432 -d postgres

    # 指定link, environment, port mapping
    $ docker run  --name kong \
    --link kong-database:kong-database \
    -e "KONG_DATABASE=cassandra" \
    -e "KONG_PG_HOST=kong-database" \
    -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database" \
    -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
    -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
    -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
    -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
    -p 8000:8000 \
    -p 8443:8443 \
    -p 8001:8001 \
    -p 8444:8444 \
    kong:latest


    $ docker restart example
    $ docker start example
    $ docker attach example
    $ docker exec -it mypostgres /bin/bash

    $ docker exec -it mypostgres /bin/bash

    $ docker logs --tail=20 -f example

    $ docker ps
    $ docker ps -a

    $ docker build -t image:latest .
    $ docker push image:latest
    $ docker pull image:latest
    $ docker pull nginx

    $ docker rm container-id
    $ docker rm container-name

    $ docker images
    $ docker rmi image-id

    $ docker save mynewimage > /tmp/mynewimage.tar
    $ docker load < /tmp/mynewimage.tar

    Disconnect a container from a network
    $ docker network disconnect multi-host-network container1
    $ docker network disconnect --force host CONTAINER
    $ docker network disconnect --force bridge CONTAINER

    $ docker system prun
    $ docker system df

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
        "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
    }

## more on containers

### ubuntu

```
apt-get update
apt-get install net-tools
```
### centos

```
yum install net-tools
```
