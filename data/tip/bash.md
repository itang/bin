bash -c "echo hello world"

## bash syntax
links: https://learnxinyminutes.com/docs/bash/

* Each command starts on a new line, or after semicolon
* Declaring a variable looks like this: `Variable="Some string"`
* Using the variable: `echo $Variable` `echo "$Variable"`

* Parameter expansion ${ }: 
    `echo ${Variable}`
    `echo ${Variable/Some/A}`
    `echo ${Variable:0:Length}`
    `echo ${Foo:-"DefaultValueIfFooIsMissingOrEmpty"} `
* Brace Expansion { }
    `echo {1..10} # => 1 2 3 4 5 6 7 8 9 10`
    `echo {a..z} # => a b c d e f ...`

* Last program return value:            $?
* Script PID:                           $$
* Number of arguments passed to script: $#
* All arguments passed to script:       $@
* Script arguments separated into different variables: $1 $2...

* echo "in $(pwd)" # execs `pwd` and interpolates output
* echo `pwd`       # execs `pwd` and interpolates output
* echo "in $PWD"   # interpolates the variable

* read Name # Note that we do not need to declare a new variable
    echo Hello, $Name!

* echo "Always executed" || echo "Only executed if first command fails"
* echo "Always executed" && echo "Only executed if first command does NOT fail"
* echo $(( 10 + 5 )) # => 15 , Expressions are denoted with the following format
* Use subshells to work across directories
```
(echo "First, I'm here: $PWD") && (cd someDir; echo "Then, I'm here: $PWD")
pwd # still in first directory
```

* cat > hello.py << EOF
    #!/usr/bin/env python
    EOF

* python hello.py > "output-and-error.log" 2>&1 # redirect both output and errors 
* python hello.py > /dev/null 2>&1 # redirect all output and errors to the black hole

* echo "#helloworld" | tee output.out >/dev/null

### if
if [ "$Name" != $USER ]
then
    echo "Your name is not your username"
else
    echo "Your name is your username"
fi

if [ "$Name" == "Steve" ] && [ "$Age" -eq 15 ]
then
    echo "This will run if $Name is Steve AND $Age is 15."
fi

if [ -e "$file_name" ] && [ ! -z "$used_var" ]
then
    echo "$file_name exists and $used_var is not empty"
fi

    -d FILE
            FILE exists and is a directory
    -e FILE
            FILE exists
    -f FILE
            FILE exists and is a regular file
    -h FILE
            FILE exists and is a symbolic link (same as -L)
    -r FILE
            FILE exists and is readable
    -s FILE
            FILE exists and has a size greater than zero
    -w FILE
            FILE exists and is writable
    -x FILE
            FILE exists and is executable
    -z STRING
            the length of STRING is zero -d FILE
            FILE exists and is a directory

if grep -q "poet" $file_name; then
..
fi

### case
case "$Variable" in
    #List patterns for the conditions you want to meet
    0) echo "There is a zero.";;
    1) echo "There is a one.";;
    *) echo "It is not null.";;
esac

### for
for Variable in {1..3}
do
    echo "$Variable"
done

for ((a=1; a <= 3; a++))
do
    echo $a
done

for Variable in file1 file2
do
    cat "$Variable"
done

for Output in $(ls) # 空字符分割
do
    cat "$Output"
done

### while
while [ true ]
do
    echo "loop body here..."
    break
done
