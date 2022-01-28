# cargo

## config

    .cargo/config of the project

    [alias]
    x = "run --bin bin1"

## Usage

    $ cargo doc
    $ cargo doc --open

    $ cargo new --bin test1
    $ cargo new --lib test2
    $ cargo +nightly new foo
    $ cargo +beta new foo

    $ cargo add may
    $ cargo add dioxus --features ssr

    $ cargo check

    $ cargo build --release

    MUSL support for fully static binaries
    https://doc.rust-lang.org/edition-guide/rust-2018/platform-and-target-support/musl-support-for-fully-static-binaries.html
    $ rustup component add rust-std-x86_64-unknown-linux-musl
    $ cargo build --release --target x86_64-unknown-linux-musl

    $ cargo run
    $ cargo run --release
    $ cargo run --bin main
    $ cargo run --example echo
    $ cargo run --example=echo --release

    $ cargo tree

    $ cargo watch -x run

    $ cargo test
    $ cargo bench

    $ cargo fix --edition
    $ cargo fix --edition-idioms
    $ cargo fix --edition-idioms --broken-code

    $ cargo generate --git https://github.com/rust-clique/cargo-template-cli

    $ cargo install -f cargo-web
    $ cargo install -f --git https://github.com/koute/cargo-web.git
    $ cargo install rustfmt-nightly
    $ cargo install -f diesel_cli --no-default-features --features sqlite,mysql

    $ cargo install --force --git https://github.com/google/evcxr.git evcxr_repl

    install local project
    $ cargo install --path .

    cargo web/wasm
    $ cargo web start --release --target wasm32-unknown-unknown

    systemfd + cargo watch
    $ systemfd --no-pid -s http::4000 -- cargo watch -x run

    cargo clippy
    $ rustup component add clippy
    if you want the build job to fail when encountering warnings, use
    $ cargo clippy -- -D warnings
    in order to also check tests and non-default crate features, use
    $ cargo clippy --all-targets --all-features -- -D warnings

## cargo.toml

```toml
[dependencies]
tokio = { version = "1.15.0", features = ["full"] }
```

## profiler

    $ cargo profiler callgrind --bin $PATH_TO_BINARY -- -a 3 --like this

## config

https://blog.csdn.net/xiangxianghehe/article/details/53471936

使用阿里云镜像

```
tee $HOME/.cargo/config <<-'EOF'
[source.crates-io]
replace-with = "rustcc"

[source.rustcc]
registry = "https://code.aliyun.com/rustcc/crates.io-index"
EOF
```
