# xargs

https://blog.csdn.net/qingsong3333/article/details/77587400

xargs命令的作用就是从stdin接收到的数据重新格式化，再将其作为参数提供给其他命令（xargs - build and execute command lines from standard input）。说直接一点，就是为其他命令提供参数的。多个参数时，默认的分割符是空格。如果不指定命令，则默认的命令是echo

## Usage

* 示例1：多行输入转化为单行输出

$ cat example.txt | xargs

* 示例2: 将单行输入转换成多行输出

-n 3表示每行最多有三个参数

$ cat example2.txt | xargs -n 3

* 示例3：使用-d指定分割符

echo "splitXsplitXsplitXsplit" | xargs -d X

* 示例4：配合find命令

find /tmp -name "*.data" -print0 | xargs -0 /bin/rm -f

其中find命令的print0表示以'\0'结束文件名，即 null character，而xargs 的 "-0"参数，表示以 null character为作分割符

sudo find /tmp -name "*.sh" -print0 | xargs -0 wc -l

* 示例5： 自定义脚本

从args.txt读取参数，脚本test.sh每次需要传入3个参数，中间的参数为不固定的

cat args.txt | xargs -I {} ./test.sh -p {} -l
