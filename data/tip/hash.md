# Hash

## Usage

    md5sum
    $ md5sum .zshrc
    $ echo hello | md5sum  | awk '{print $1}'

    sha1sum
    $ echo hello | sha1sum  | awk '{print $1}'

    sha256sum
    $ echo hello | sha256sum  | awk '{print $1}'

    sha512sum
    $ echo hello | sha512sum  | awk '{print $1}'
