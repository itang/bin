# curl

## cheat sheet

https://curl.github.io/curl-cheat-sheet/http-sheet.html

## Usage

    $ curl -sSL https://git.io/gobackup | bash
    $ curl -L -o coursier https://git.io/vgvpD

    $ curl -v https://www.baidu.com

    Allow connections to SSL sites without certs (H)
    $ curl -i --insecure https://localhost:8443
    $ curl -i -k https://localhost:8443

    Post JSON
    $ curl -X POST -d '{"name": "tom", "legs": 4}' -H "Content-Type: application/json" http://localhost:8080/orders/shoes

    send cookies via command line
    $ curl -H "Content-Type: application/json" -X GET \
      http://localhost:4000/api/users \
      -c cookies.txt -b cookies.txt -i

    links: https://stackoverflow.com/questions/15995919/curl-how-to-send-cookies-via-command-line/23039038#23039038

    $ basic auth
    curl -u username:password http://hostname/some

    check gzip compression
    $ curl -H "Accept-Encoding: gzip" -I https://somehost/some.js
    ...
    Content-Encoding: gzip
    ...

    upload files
    $ curl -F file=@http-index-fs http://10.1.xx.60:8080/upload

    Maximum time allowed to spend
    $ curl --max-time 5.5 https://example.com/

    Never spend more than this to connect
    $ curl --connect-timeout 2.37 https://example.com/

## mockbin

    curl --request POST \
    --url 'http://mockbin.com/request?foo=bar&foo=baz' \
    --header 'accept: application/json' \
    --header 'content-type: application/json' \
    --header 'x-pretty-print: 2' \
    --cookie 'foo=bar; bar=baz' \
    --data '{"foo": "bar"}'
