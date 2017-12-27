# consul

## Usage

    go get -v github.com/hashicorp/consul

    $ consul agent --dev

    $ dig +noall +answer @127.0.0.1 -p 8600 webkv.service.dc1.consul
    $ curl "localhost:8500/v1/health/service/webkv?passing"
