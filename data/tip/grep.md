# grep

## Usage

    $ tail -f -n 1000 /xxx/logs/application.log | grep "ERROR"
    $ grep "TODO" `find . -name "application.properties"`

    Context control
    -B, --before-context=NUM  print NUM lines of leading context
    -A, --after-context=NUM   print NUM lines of trailing context
    -C, --context=NUM         print NUM lines of output context

    $ cat application.log application.log.2018-01-10.log | grep -B 1 TerminalStartProgram

    Grep NOT using grep -v
    $ cat logs/application.log.2018-03-04.log | grep "xxx" | grep -v "\"amount\":0"

## egrep

    $ svn info -r "HEAD" | egrep "版本|Revision" | egrep -o "[0-9]+"

    $ egrep --help | grep "only-matching"
    -o, --only-matching       show only the part of a line matching PATTERN

    $ egrep 'TODO|FIXME|OPTIMIZE|REVIEW|NOTICE' -n -C 1 --color `find . -name "*.kt"`
