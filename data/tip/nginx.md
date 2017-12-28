# nginx

## nginx cmd

$ nginx -p `pwd`/ -c conf/nginx.conf
$ nginx -p `pwd`/ -s reload
$ nginx -p `pwd`/ -s stop
$ nginx -p `pwd`/ -c conf/nginx.conf -g "daemon off;"


## location 匹配规则

    `location [=|~|~*|^~] /uri/ { … }`

    location = /uri	= 表示精确匹配，只有完全匹配上才能生效
    location ^~ /uri	^~ 开头对URL路径进行前缀匹配，并且在正则之前。
    location ~ pattern	开头表示区分大小写的正则匹配
    location ~* pattern	开头表示不区分大小写的正则匹配
    location /uri	不带任何修饰符，也表示前缀匹配，但是在正则匹配之后
    location /	通用匹配，任何未匹配到其它location的请求都会匹配到，相当于switch中的default

    首先精确匹配 =
    其次前缀匹配 ^~, 如果有包含关系时，按最大匹配原则进行匹配。比如在前缀匹配：location /dir01 与 location /dir01/dir02，如有请求 http://localhost/dir01/dir02/file 将最终匹配到 location /dir01/dir02
    其次是按文件中顺序的正则匹配
    然后匹配不带任何修饰的前缀匹配。
    最后是交给 / 通用匹配
    当有匹配成功时候，停止匹配，按当前匹配规则处理请求

## Websocket

    map $http_upgrade $connection_upgrade {
        default upgrade;
        ''      close;
    }

## proxy_pass

- proxy_hide_header
- proxy_set_header
- proxy_hide_header
- add_header


    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;

    proxy_set_header "Apikey" "ENTER_KEY_HERE";

    add_header Access-Control-Allow-Origin "*";
    add_header Access-Control-Allow-Methods "GET,HEAD,PUT,POST,DELETE";
    add_header Access-Control-Max-Age "1728000";

    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection $connection_upgrade;

    add_header Access-Control-Allow-Origin "*";
    add_header Access-Control-Allow-Credentials "true";

    add_header Access-Control-Allow-Methods "GET,HEAD,PUT,POST,DELETE";
    proxy_hide_header Access-Control-Allow-Origin;
    add_header 'Access-Control-Max-Age' 86400;
    add_header 'Access-Control-Allow-Headers' 'Authorization, reqid, nid, host, x-real-ip, x-forwarded-ip, event-type, event-id, accept, content-type';
