# curl

## Usage

    $ curl -sSL https://git.io/gobackup | bash
    $ curl -L -o coursier https://git.io/vgvpD

    Allow connections to SSL sites without certs (H)
    $ curl -i --insecure https://localhost:8443
    $ curl -i -k https://localhost:8443

    send cookies via command line
    $ curl -H "Content-Type: application/json" -X GET \
      http://localhost:4000/api/users \
      -c cookies.txt -b cookies.txt -i

    links: https://stackoverflow.com/questions/15995919/curl-how-to-send-cookies-via-command-line/23039038#23039038

    $ basic auth
    curl -u username:password http://hostname/some

## mockbin

    curl --request POST \
    --url 'http://mockbin.com/request?foo=bar&foo=baz' \
    --header 'accept: application/json' \
    --header 'content-type: application/json' \
    --header 'x-pretty-print: 2' \
    --cookie 'foo=bar; bar=baz' \
    --data '{"foo": "bar"}'
