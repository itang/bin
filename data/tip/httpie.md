# httpie

## Usage

### To skip the host's SSL certificate verification, you can pass --verify=no (default is yes)

    $ http https://localhost:8444/ --verify=no

### HTTP headers

    $ http example.org  User-Agent:Bacon/1.0  'Cookie:valued-visitor=yes;foo=bar'  \
    X-Foo:Bar  Referer:http://httpie.org/

    $ default headers by httpie
    $ http httpbin.org/headers

    Empty headers and header un-setting
    $ http httpbin.org/headers Accept: User-Agent:
    $ http httpbin.org/headers 'Header;'

### form post

application/x-www-form-urlencoded

    $ echo '_method=delete' | http --form post ":8000/todo/6"

### json post

    $ echo '{"name": "test", "rate": 12}' | http post ":3030/employees/11"

## Tools

- httpbin.org

- mockbin.org

    echo '{"foo": "bar"}' |  \
    http POST 'http://mockbin.com/request?foo=bar&foo=baz' \
    accept:application/json \
    content-type:application/json \
    cookie:'foo=bar; bar=baz' \
    x-pretty-print:2
