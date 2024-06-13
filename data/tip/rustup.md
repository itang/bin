# rustup


## Usage 0

    rustup show

    rustup toolchain install stable-msvc
    rustup toolchain install nightly-msvc
    rustup toolchain install nightly

    rustup toolchain install stable-gnu

    rustup default nightly
    rustup default stable-msvc
    rustup default stable-gnu

    rustup toolchain uninstall nightly

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
