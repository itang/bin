# lsof

## Usage

    $ lsof -i :4000

    $ lsof -i :4000 | awk 'NR > 1 {print $2}'
