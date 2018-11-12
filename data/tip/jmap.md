# jmap

## Usage

    $ jmap -heap pid

    查看heap情况，如查看存活对象列表
    $ jmap -histo:live pid | grep com.company | less

    dump内存用来分析
    $ jmap -dump:file=test.bin pid