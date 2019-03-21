# git

https://mp.weixin.qq.com/s/FzFwIDxWqGqcfTXJ0CbPFg

## Setting

    $ git config --global user.name "itang"
    $ git config --global user.email "live.tang@gmail.com"

    $ ssh-keygen -t rsa -C "live.tang@gmail.com"
    $ cat ~/.ssh/id_rsa.pub

## Usage

    $ git init

    $ git remote add origin git@bitbucket.org:user/something.git

    $ git add README.md
    $ git commit -m "first commit"
    $ git push -u origin master


    $ git clone git@github.com:itang/testgit.git

    回退到上一个版本
    $ git reset --hard HEAD^

    回退到上上版本
    $ git reset --hard HEAD^^

    显示所有的log
    $ git reflog

    恢复到指定的版本
    $ git reset --hard b75ae95


    创建dev分支，然后切换到dev分支上
    $ git checkout -b dev

    $ git branch dev && git checkout dev

    查看分支
    $ git branch

    回到master分支
    $ git checkout master


    (当前分支）合并指定分支
    $ git merge dev
    $ git merge --no--ff -m "merge with no-ff" dev

    删除指定分支
    $ git branch -d dev

    工作现场
    $ git  stash
    $ git stash list
    $ git stash apply
    $ git stash drop
    $ git stash pop

    查看远程信息
    $ git remote
    $ git remote -v

　　 将本地分支与远程origin/dev分支建立链接
　　 $ git branch --set-upstream dev origin/dev

    将指定分支推送到指定远程
    $ git push origin master

    拉去远程内容
    $ git pull
