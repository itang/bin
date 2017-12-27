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
