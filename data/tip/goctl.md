# goctl

## Install

### Install goctl
```
go install github.com/zeromicro/go-zero/tools/goctl@latest

ls $"($env.GOPATH)/bin"

goctl --version
```

### get go-zero

```
go get -u github.com/zeromicro/go-zero@latest
```

### protoc 环境

* 一键安装(推荐)环境 (protoc 安装)
```
goctl env check --verbose
```

* 验证安装
```
goctl env check --verbose
```

* 安装grpcurl

```
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
```

## Usage

### New Http Api Module

```
goctl api new demo
```

### New RPC Api Module

```
goctl rpc new demo
```

