# go

## go bulid

    $ go test -bench=. ./examples/fib

    构建去掉debug信息
    $ go build -ldflags "-s" prog.go
    $ go build -ldflags "-s -w"

    压缩
    $ go build -ldflags "-s -w" main.go && upx main 

    纯静态编译 (http://tonybai.com/2017/06/27/an-intro-about-go-portability/)
    $ go build -o server-static-link -ldflags '-linkmode "external" -extldflags "-static"' server.go

    你的程序用了哪些标准库包？如果仅仅是非net、os/user等的普通包，那么你的程序默认将是纯静态的，不依赖任何c lib等外部动态链接库；
    如果使用了net这样的包含cgo代码的标准库包，那么CGO_ENABLED的值将影响你的程序编译后的属性：是静态的还是动态链接的；
        CGO_ENABLED=0的情况下，Go采用纯静态编译；
        如果CGO_ENABLED=1，但依然要强制静态编译，需传递-linkmode=external给cmd/link

    Cross compilation (http://tonybai.com/2014/10/20/cross-compilation-with-golang/)
    $ GOOS=windows GOARCH=386 go build -o pinger-client-win32.exe pingerclient/main.go
    $ GOOS=windows GOARCH=amd64 go build -o pinger-client-win64.exe pingerclient/main.go

    GOOS: windows | linux | darwin
    GOARCH: 386 | amd64

## go tools

## goproxy

https://goproxy.io/

```
go env -w GO111MODULE=on
go env -w GOPROXY="https://goproxy.io,direct"

# Set environment variable allow bypassing the proxy for selected modules (optional)
go env -w GOPRIVATE="*.corp.example.com"

# Set environment variable allow bypassing the proxy for specified organizations (optional)
go env -w GOPRIVATE="example.com/org_name"
```
    
### httpstat

    $ go get -u github.com/davecheney/httpstat
    $ httpstat https://example.com/

### pixterm

    $ go get -u github.com/eliukblau/pixterm
    $
