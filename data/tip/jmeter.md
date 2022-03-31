# jmeter

## setup

    Modify current env variable HEAP="-Xms1g -Xmx1g -XX:MaxMetaspaceSize=256m" in the jmeter batch file

## Usage

    jmeter -n -t [jmx file] -l [results file] -e -o [Path to web report folder]
