# deno

## Usage

    $ deno run --allow-read=file.txt script.ts
    $ deno run --allow-write=/tmp script.ts
    $ deno run --allow-net script.ts

    $ deno info
    $ deno info server.ts

    deno install [OPTIONS] <exe_name> <SUBCOMMAND>
    $ deno install server server.ts
    $ deno install file_server https://deno.land/std/http/file_server.ts --allow-net --allow-read

    deno bundle [OPTIONS] <source_file> [out_file]
    $ deno bundle server.ts server-with-deps.js
    $ deno server-with-deps.js

    $ deno types

    deno eval [OPTIONS] <code>
    $ deno eval 'console.log("hello")'

    deno fmt [OPTIONS] <files>...
    $ deno fmt server.ts

    $ deno test server.ts