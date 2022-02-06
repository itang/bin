# deno

## Usage

    $ deno run --allow-read=file.txt script.ts
    $ deno run --allow-write=/tmp script.ts
    $ deno run --allow-net script.ts

    --unstable Enable unstable APIs
    $ deno run --unstable --allow-read main.ts
    watch changes
    $ deno run --watch --unstable main.ts

    inspect
    $ deno run --inspect main.ts
    $ deno run ----inspect-brk main.ts
    open chrome://inspect/#devices

    $ deno run -A --import-map imports.json .\lib\es6\src\demo.js
    
    compile
    $ deno compile --import-map=imports.json .\lib\es6\src\demo.js

    $ deno info
    $ deno info server.ts

    deno install [OPTIONS] <exe_name> <cmd>...
    $ deno install server server.ts
    $ deno install --allow-net --allow-read file_server https://deno.land/std/http/file_server.ts

    deno bundle [OPTIONS] <source_file> [out_file]
    $ deno bundle server.ts server-with-deps.js
    $ deno server-with-deps.js

    $ deno types

    deno eval [OPTIONS] <code>
    $ deno eval 'console.log("hello")'

    deno fmt [OPTIONS] <files>...
    $ deno fmt server.ts

    $ deno test server.ts

## tips

Testing if current file is the main program

```typescript
if (import.meta.main) {
    console.log("main");
}
```
