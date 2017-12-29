# grep

## Usage

    $ tail -f -n 1000 /xxx/logs/application.log | grep "ERROR"
    $ grep "TODO" `find . -name "application.properties"`

## egrep

    $ svn info -r "HEAD" | egrep "版本|Revision" | egrep -o "[0-9]+"

    $ egrep --help | grep "only-matching"
    -o, --only-matching       show only the part of a line matching PATTERN
