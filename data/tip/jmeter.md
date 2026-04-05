# jmeter

## setup

    Modify current env variable HEAP="-Xms1g -Xmx1g -XX:MaxMetaspaceSize=256m" in the jmeter batch file

## Usage

    jmeter -n -t [jmx file] -l [results file] -e -o [Path to web report folder]

    JMeter 属性
    `jmeter -Jbrowse_percent=60 -Jorder_percent=30`

    最简单的执行
    `jmeter -n -t test.jmx`
        -n 非 GUI 模式（no GUI） -t 指定 JMX 测试计划文件

    指定结果文件
    `jmeter -n -t test.jmx -l result.jtl`
        -l 指定结果日志文件（JTL 格式）

    生成 HTML 报告
    `jmeter -n -t test.jmx -l result.jtl -e -o report`
        -e 测试结束后生成报告 -o 指定报告输出目录

    动态修改参数
    `jmeter -n -t test.jmx -Jthreads=100 -Jduration=300 -Jrampup=10`
        -J 设置 JMeter 属性（可在 JMX 中通过 ${__P(threads)} 引用）

        线程组 → 线程数：${__P(threads,10)}  ← 默认10

    场景：压测并生成报告

    ```
    # 进入 JMeter bin 目录
    cd /opt/apache-jmeter-5.6/bin

    # 执行测试
    ./jmeter \
    -n \
    -t /home/tests/api_pressure_test.jmx \
    -l /home/results/$(date +%Y%m%d_%H%M%S).jtl \
    -e \
    -o /home/reports/report_$(date +%Y%m%d_%H%M%S) \
    -Jhost=api.example.com \
    -Jport=8080 \
    -Jthreads=500 \
    -Jduration=1800
    ```

    执行时指定属性（文件）配置 ：
    
    开发环境
    `jmeter -n -t test.jmx -p config/dev.properties`

    测试环境
    `jmeter -n -t test.jmx -p config/test.properties -Jthreads=200`

    生产环境
    `jmeter -n -t test.jmx -p config/prod.properties -Jthreads=1000`
