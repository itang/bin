# rg

https://github.com/BurntSushi/ripgrep

## Usage

    $ rg "TODO|FIXME" -g "*.kt"
    $ rg "TODO|FIXME|OPTIMIZE|REVIEW"

    $ rg clap -g '!*.toml'
    $ rg 'int main' -g '*.{c,h}'
    $ rg 'int main' -tc
    $ rg clap --type-not rust
    $ rg clap -Trust

    -C, --context <NUM>
    $ rg "GOODS_CENTER_ERROR" -C 3 -g "*.thrift"

    $ rg --type-list | rg '^make:'

    Replace(for display)
    $ rg fast README.md --replace FAST
    $ rg fast README.md -r FAST
