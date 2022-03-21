# zig

## Usage

    $ zig test src/main.zig

    $ zig cc -o main main.c -target x86_64-linux-musl
    $ zig cc -o main main.c -target x86_64-linux -static

    $ zig cc -Drelease -target x86_64-windows -static main.c     
    $ zig cc -Drelease_safe -target x86_64-windows -static main.c

    $ pip install ziglang
    $ python -m ziglang cc -target x86_64-windows -static main.c
