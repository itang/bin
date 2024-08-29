# arthas

## Usage

    $ arthas [pid]

    进程信息面板（显示线程列表、内存、GC）
    > dashboard

    打印线程堆栈信息
    > thread tid

    反编译Java 类
    jad akka.actor.LightArrayRevolverScheduler

    监控方法的执行
    monitor [-b] [-c <value>] [-h] [-n <value>] [--listenerId <value>] [-E <value>] [-v] class-pattern method-pattern [condition-express]
    monitor -c 5 akka.actor.LightArrayRevolverScheduler$$anon$4 executeBucket$1

    trace

    > trace demo.MathGame run -v -n 1 --skipJDKMethod false '#cost > 10' 

    > trace -E com.test.ClassA|org.test.ClassB method1|method2|method3 

    > trace javax.servlet.Filter * --exclude-class-pattern com.demo.TestFilter


    动态 trace
    > trace demo.MathGame run
    > trace demo.MathGame primeFactors --listenerId 1
