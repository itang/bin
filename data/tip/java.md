# java

## Usage

    $ java -XX:+PrintFlagsFinal -version | grep -Ei "maxheapsize|maxram"

    $ java -Xss500k -XX:+PrintFlagsFinal -version  | grep ThreadStackSize
    $ java -XX:ThreadStackSize=2k -XX:+PrintFlagsFinal -version 2>&1 | grep ThreadStackSize

    -Djava.library.path
    $javac HelloWorld.java && java -Djava.library.path=mylib/target/debug/ HelloWorld

    dump to java_pid${pid}.hprof
    $ java -Xmx5m -XX:+HeapDumpOnOutOfMemoryError -jar build/libs/hello-world-0.1-all.jar

    $ java -Xmx5m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=file.hprof -jar build/libs/hello-world-0.1-all.jar

    $ java -Xmx10m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=file.hprof -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:logfile.gc -XX:+PrintCommandLineFlags -jar build/libs/hello-world-0.1-all.jar


    -cp
    Use Java 6  wildcard option to include multiple JAR: use wildcard * and not  *.jar
    Read more: https://javarevisited.blogspot.com/2012/10/5-ways-to-add-multiple-jar-to-classpath-java.html#ixzz6LzsKXHFO
    $ java -cp "/home/itang/.asdf/installs/scala/2.13.2/lib/*:." Main


## Gc options

see: https://zhuanlan.zhihu.com/p/118490800

```
-XX:+PrintGCDetails 表示打印GC的详细日志

-XX:+PrintGCDateStamps 表示需要展示打印GC的日期时间

-XX:+PrintGCApplicationStoppedTime 打印垃圾回收期间程序暂停的时间

日志滚动，输出到指定的日志文件中等等配置
-Xloggc:logs/gc.log
-XX:+UseGCLogFileRotation
-XX:NumberOfGCLogFiles=32
-XX:GCLogFileSize=64
```
