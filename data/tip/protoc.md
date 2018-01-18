# protoc

## Usage

    $ protoc --go_out=. *.proto

    $ protoc --go_out=plugins=grpc:. *.proto
    $ protoc --go_out=plugins=grpc,import_path=mypackage:. *.proto
