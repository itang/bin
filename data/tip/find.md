# find

## Links

- https://www.linux.com/blog/25-examples-linux-find-command-search-files-command-line

## Basic Syntax

    find /dir/to/search/ -options -name 'regex' -action
    find /dir/to/search/ -options -iname 'regex' -action
    find /dir/to/search/ -type f -name 'regex' -print
    find /dir/to/search/ -type f -name \( expression \) -print

## Usage

    List all files in current and sub directories
    $ find
    $ find . -print
    $ find ./test

    Search specific directory or path
    $ find ./test -name abc.txt
    $ find ./test -name *.php

    Ignore the case
    $ find ./test -iname *.Php

    Limit depth of directory traversal
    $ find ./test -maxdepth 2 -name *.php

    Invert match
    $ find ./test -not -name "*.php"
    $ find . ! -name "*.php"

    Combine multiple search criterias
    $ find ./test -name 'abc*' ! -name '*.php'

    OR operator
    $ find -name '*.php' -o -name '*.txt'

    Search only files or only directories
    $ find ./test -type f -name abc*
    $ find ./test -type d -name abc*

    Search multiple directories together
    $ find ./test ./dir2 -type f -name abc*

    Say hello to -path option
    $ find . -type f -name "*.txt" ! -path "./Movies/*" ! -path "./Downloads/*" ! -path "./Music/*"

    ignore hidden files
    $ find . -maxdepth 1 -type d ! -iname ".*"
    $ find . -maxdepth 1 -type d ! -name ".*"

    Find hidden files
    $ find ~ -type f -name ".*"

    Find files with certain permissions
    $ find . -type f -perm 0664
    $ find . -type f ! -perm 0777

    Find files with sgid/suid bits set
    $ find / -perm 2644
    $ find / -maxdepth 2 -perm /u=s 2>/dev/null

    Find readonly files
    $ find /etc -maxdepth 1 -perm /u=r
    $ find /bin -maxdepth 2 -perm /a=x

    Find files belonging to particular user
    $ find . -user bob
    $ find . -user bob -name '*.php'

    Search files belonging to group
    $ find /var/www -group developer
    $ find ~ -name hidden.php

    Find files modified N days back
    To find all the files which are modified 50 days back.
    $ find / -mtime 50

    Find files accessed in last N days
    $ find / -atime 50

    Find files modified in a range of days
    $ find / -mtime +50 -mtime -100

    Find files changed in last N minutes.
    $ find /home/bob -cmin -60

    Files modified in last hour
    $ find / -mmin -60

    Find Accessed Files in Last 1 Hour
    $ find / -amin -60

    Find files of given size
    $ find / -size 50M

    Find files in a size range
    $ find / -size +50M -size -100M

    Find largest and smallest files
    $ find . -type f -exec ls -s {} \; | sort -n -r | head -5
    $ find . -type f -exec ls -s {} \; | sort -n | head -5

    Find empty files and directories
    $ find /tmp -type f -empty
    $ find ~/ -type d -empty

    List out the found files
    find . -exec ls -ld {} \;

    Delete all matching files or directories
    $ find /tmp -type f -name "*.txt" -exec rm -f {} \;
    $ find /home/bob/dir -type f -name *.log -size +10M -exec rm -f {} \;

    Combine lines process
    $ find . -name build.gradle | xargs du -sh
    $ find . -name build.gradle | xargs -I {} du -sh {}
    $ find . -name build.gradle -exec du -sh {} \;
