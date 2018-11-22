# jps

## Usage

    $ for x  in `jps | awk '{if($2 != "Jps") print $1}'`; do echo "$x $(ps -mp $x -o THREAD,tid,time | wc -l)"; done
