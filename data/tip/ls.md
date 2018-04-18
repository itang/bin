# ls

## Usage

    目录文件名使用":"连接起来
    $ ls -1 | paste -sd ":" -

## exa (Rust)

alias ls="exa"

    tree显示target目录下最多2级目录
    $ ls -lT target -L 2

    创建时间降序显示文件
    $ ls -rs created
