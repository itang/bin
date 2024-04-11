# grep

## Usage

    $ tail -f -n 1000 /xxx/logs/application.log | grep "ERROR"
    $ grep "TODO" `find . -name "application.properties"`

    Context control
    -B, --before-context=NUM  print NUM lines of leading context
    -A, --after-context=NUM   print NUM lines of trailing context
    -C, --context=NUM         print NUM lines of output context

    $ cat application.log application.log.2018-01-10.log | grep -B 1 TerminalStartProgram

    Grep NOT using grep -v
    $ cat logs/application.log.2018-03-04.log | grep "xxx" | grep -v "\"amount\":0"

    ignore case: -i
    $ tip mysql | grep -i index

## egrep

    $ svn info -r "HEAD" | egrep "版本|Revision" | egrep -o "[0-9]+"

    $ egrep --help | grep "only-matching"
    -o, --only-matching       show only the part of a line matching PATTERN

    $ egrep 'TODO|FIXME|OPTIMIZE|REVIEW|NOTICE' -n -C 1 --color `find . -name "*.kt"`
    $ egrep "at.*.publish\(" *.log

## more

grep -v 是一个在类Unix操作系统中使用的命令行工具，用于搜索文本并打印出不匹配指定模式的行。grep 是 "global regular expression print" 的缩写，它可以用来搜索文件中的文本，匹配特定的模式或者字符串。

`-v` 选项，或 `--invert-match`，用于反转匹配，即输出那些不匹配指定模式的行。这在你想要排除某些结果时非常有用。

基本用法
grep -v [pattern] [file...]
    [pattern] 是你想要 grep 搜索的文本模式或正则表达式。
    [file...] 是你想要搜索的文件或文件列表。

示例
假设你有一个名为 example.txt 的文件，你想要列出所有不包含 "apple" 这个词的行，你可以使用以下命令：

`grep -v "apple" example.txt`

这个命令会输出 example.txt 中所有不包含 "apple" 的行。

高级用法
grep 还有许多其他选项，可以与 -v 一起使用来增强搜索功能。例如：

    -i 忽略大小写。
    -n 显示匹配行的行号。
    -r 或 -R 递归地搜索文件。
    -l 只列出包含匹配行的文件名，而不是匹配的内容。
    -e 指定多个搜索模式。

使用这些选项，你可以创建复杂的搜索查询来满足你的特定需求。

注意事项
grep 命令在默认情况下使用基本正则表达式（Basic Regular Expressions）。如果你需要更高级的正则表达式功能，可以使用 -E 选项来启用扩展正则表达式（Extended Regular Expressions）。
在使用 grep 时，如果你的模式包含特殊字符或者空格，最好用引号将模式括起来，以确保它被正确解析。
grep -v 是一个强大的工具，可以帮助你快速过滤和分析文本数据。通过结合不同的选项和模式，你可以创建出适合各种场景的搜索查询。