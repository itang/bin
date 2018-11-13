# awk

awk 动作 文件名

对输入源'文件名'的每行执行'动作'

see: http://www.ruanyifeng.com/blog/2018/11/awk.html

## variables

`$0` 当前行

awk会根据空格和制表符，将每一行分成若干字段，依次用`$1`、`$2`、`$3`代表第一个字段、第二个字段、第三个字段等等

变量NF表示当前行有多少个字段，因此$NF就代表最后一个字段

$(NF-1)代表倒数第二个字段

变量NR表示当前处理的是第几行

FILENAME：当前文件名

FS：字段分隔符，默认是空格和制表符。

RS：行分隔符，用于分割每一行，默认是换行符。

OFS：输出字段的分隔符，用于打印时分隔字段，默认为空格。

ORS：输出记录的分隔符，用于打印时分隔记录，默认为换行符。

OFMT：数字输出的格式，默认为％.6g。

## builtin functions

函数toupper()用于将字符转为大写

tolower()：字符转为小写。

length()：返回字符串长度。

substr()：返回子字符串。

sin()：正弦。

cos()：余弦。

sqrt()：平方根。

rand()：随机数。

more: https://www.gnu.org/software/gawk/manual/html_node/Built_002din.html#Built_002din

## condition

awk '条件 动作' 文件名


## Usage

    $ awk '{print $1}' a.txt
    $ awk -F ':' '{print $1}' a.txt

    $ awk -F ':' '{print NR ") " $1}' a.txt

    使用函数
    $ awk -F ':' '{ print toupper($1) }' a.txt

    只输出包含usr的行
    $ awk -F ':' '/usr/ {print $1}' a.txt

    输出奇数行
    $ awk -F ':' 'NR % 2 == 1 {print $1}' demo.txt

    输出第三行以后的行
    $ awk -F ':' 'NR >3 {print $1}' demo.txt

    输出第一个字段等于指定值的行
    $ awk -F ':' '$1 == "root" {print $1}' demo.txt
    $ awk -F ':' '$1 == "root" || $1 == "bin" {print $1}' demo.txt

    if
    awk -F ':' '{if ($1 > "m") print $1}' demo.txt
    awk -F ':' '{if ($1 > "m") print $1; else print "---"}' demo.txt
