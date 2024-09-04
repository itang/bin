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
-XX:GCLogFileSize=64m
```

https://dzone.com/articles/try-to-avoid-xxusegclogfilerotation

```
java -Xms1024m -Xmx1024m -Dfile.encoding=UTF-8 -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=data/ -XX:ErrorFile=logs/hs_err_pid%p.log -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCApplicationStoppedTime -Xloggc:logs/gc-%t.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=8 -XX:GCLogFileSize=64m -jar xxx.jar
```

## Java 8 参数

```
  java -Dfile.encoding=UTF-8 \
       -Djava.io.tmpdir=tmp \
       -Djava.net.preferIPv4Stack=true \
       -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.port=9010 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false \
       -Xms1024m -Xmx1024m -Xss512k -XX:NewRatio=1 \
       -XX:MetaspaceSize=100m -XX:MaxMetaspaceSize=512m \
       -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=logs \
       -XX:ErrorFile=logs/hs_err_pid%p.log \
       -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCApplicationStoppedTime -Xloggc:logs/gc-%t.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=8 -XX:GCLogFileSize=64m \
       -cp "target/universal/stage/lib/*" \
       demo.Main
```

### 手工触发GC

方式1: `jcmd PID GC.run`

-XX:+DisableExplicitGC 配置 禁用gc 则不会触发GC

GC 日志输出: "[Full GC (System.gc())"

方式2: `jmap -dump:live` or `jmap -histo:live`

都会触发Full GC , 不受 -XX:+DisableExplicitGC 影响, GC 日志输出"[Full GC (Heap Inspection
Initiated GC)"

### JVM诊断常用命令

```
jmap -heap ${pid}
jmap -dump:format=b,file=logs/dump/test.bin ${pid}
jstat -gc ${pid} 2000
jstack ${pid}
```
