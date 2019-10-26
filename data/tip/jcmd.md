# jcmd

## Usage

    $ jcmd 13221 GC.heap_info

    heap dump 之前做一次Full GC
    $ jcmd <pid> GC.heap_dump

    不做Full GC的heap dump
    $ jcmd <pid> GC.heap_dump -all

