# java

## Usage

    -Djava.library.path
    $javac HelloWorld.java && java -Djava.library.path=mylib/target/debug/ HelloWorld

    dump to java_pid${pid}.hprof
    $ java -Xmx5m -XX:+HeapDumpOnOutOfMemoryError -jar build/libs/hello-world-0.1-all.jar

    $ java -Xmx5m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=file.hprof -jar build/libs/hello-world-0.1-all.jar

    $ java -Xmx10m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=file.hprof -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:logfile.gc -XX:+PrintCommandLineFlags -jar build/libs/hello-world-0.1-all.jar
