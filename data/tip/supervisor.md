# supervisor

## Usage

    重启所有应用
    $ supervisorctl restart

    重启指定分组的应用
    $ supervisorctl restart backend:

    加载有变动的配置
    $ supervisorctl reread

    将新的program/group加入并启动
    $ supervisorctl add toolset

    加载有变动的配置并重启应用
    $ supervisorctl update

    $ supervisorctl status

    查看进程标准输出
    $ supervisorctl tail -50000 activemq stderr


## AUTO log file

未設置或者爲AUTO

stderror_logfile=

stdout_logfile=

$ find /tmp -name "*supervisor*.log*" 2>/dev/null | xargs du -sh

```
28M	/tmp/test-stdout---supervisor-Cb6FMz.log
51M	/tmp/test-stdout---supervisor-Cb6FMz.log.1
4.0K	/tmp/test-stderr---supervisor-PP2Q3p.log
```
