# svn

## Links

links: http://139.199.4.119/book/learn/scm/svn.html

## Usage

    svn cp -m "create my branch" --parents http://host/trunk http://host/branches/my

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
