# cargo

## Usage

    $ cargo new --bin test1
    $ cargo new --lib test2

    $ cargo add may

    $ cargo build --release
    $ cargo build --release --target x86_64-unknown-linux-musl

    $ cargo run
    $ cargo run --release
    $ cargo run --bin main
    $ cargo run --example echo
    $ cargo run --example=echo --release

    $ cargo watch -x run

    $ cargo test
    $ cargo bench

    $ cargo install -f cargo-web
    $ cargo install -f --git https://github.com/koute/cargo-web.git
    $ cargo install rustfmt-nightly
