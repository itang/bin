# docker

## Usage

    $ docker run -ti -name container-name image-id /bin/bash
    $ docker run -ti -name container-name -d image-id
    $ docker run -ti -name container-name -p 4000:4000 -d image-id
    $ docker run --rm -ti --net=host postgresql /bin/bash
    $ docker run -it --name mypostgres -p 5432:5432 postgres
    $ docker run -it --name mypostgres -p 5432:5432 -d postgres

    # 指定link, network, environment, port mapping
    $ docker run --rm --network="testkong_default" --link kong-database:kong-database -e "KONG_DATABASE=cassandra" -e "KONG_PG_HOST=kong-database" -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database" kong:latest kong migrations up


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

    `dangling` images == `UNTAGGED` IMAGES
    $ docker rmi $(docker images -f "dangling=true" -q)

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
