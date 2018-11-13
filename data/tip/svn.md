# svn

## Links

links: http://139.199.4.119/book/learn/scm/svn.html

## Usage

    svn cp -m "create my branch" --parents http://host/trunk http://host/branches/my

    [--parents](https://stackoverflow.com/questions/12906238/what-is-intermediate-directories-in-svn/12906577)

    格式: svn propset svn:global-ignores filelist .
    格式: svn propset svn:ignore filePattern .

    $ svn propget svn:ignore backend
    $ svn pg svn:ignore backend
    $ svn pg svn:global-ignores
    $ svn status --no-ignore | grep "^I"
    $ svn pg svn:global-ignores . -v --show-inherited-props

    $ svn propset svn:ignore "*.pem" .
    $ svn propset svn:ignore "1.pem 2.pem " .
    $ svn propset svn:ignore -RF /root/svn-ignore.txt .

    $ svn proplist -v


    $ svn info

    Revision: 表示同一个版本库中最新的revision号码（整个Repository的revision)
    Last Changed Rev:表示指定Path最后一次更改的revision（当前目录的最新revision）
