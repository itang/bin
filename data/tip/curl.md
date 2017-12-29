# curl

## Usage

    $ curl -sSL https://git.io/gobackup | bash
    $ curl -L -o coursier https://git.io/vgvpD

    Allow connections to SSL sites without certs (H)
    $ curl -i --insecure https://localhost:8443
    $ curl -i -k https://localhost:8443

## mockbin

    curl --request POST \
    --url 'http://mockbin.com/request?foo=bar&foo=baz' \
    --header 'accept: application/json' \
    --header 'content-type: application/json' \
    --header 'x-pretty-print: 2' \
    --cookie 'foo=bar; bar=baz' \
    --data '{"foo": "bar"}'
