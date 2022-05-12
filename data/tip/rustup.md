# rustup

## Usage

    $ rustup update nighlty
    $ rustup update stable
    
    $ rustup install nightly
    $ rustup install nightly-2019-09-03

    $ rustup default nightly
    $ rustup default nightly-2017-12-20

    # Modify directory toolchain overrides
    $ rustup override set nightly

    $ rustup target list
    $ rustup target add wasm32-unknown-unknown

    $ rustup component add rls-preview --toolchain nightly

    $ rustup self update

    $ rustup doc --std
    $ rustup doc --book
