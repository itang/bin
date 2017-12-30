# Web Assembly (wasm)

## Rust

links: https://www.hellorust.com/

### wasm32-unknown-unknown

    $ rustup toolchain install nightly # or rustup update nightly
    $ rustup target add wasm32-unknown-unknown --toolchain nightly
    $ cargo install --git https://github.com/alexcrichton/wasm-gc

### cargo web

    $cargo install --force cargo-web

    $ cargo web build
    $ cargo web test [--nodejs]
    $ cargo web start --target-webasm
