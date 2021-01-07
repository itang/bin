# git

https://mp.weixin.qq.com/s/FzFwIDxWqGqcfTXJ0CbPFg

## Setting

    $ git config --global user.name "itang"
    $ git config --global user.email "live.tang@gmail.com"

    $ git config --global color.ui true
    $ git config --global core.editor "vim"

    $ git config --list

    install gui tool
    $ sudo apt-get install gitk

    $ ssh-keygen -t rsa -C "live.tang@gmail.com"
    $ cat ~/.ssh/id_rsa.pub

## Usage

    $ git init

    $ git remote add origin git@bitbucket.org:user/something.git

    $ git add README.md
    $ git commit -m "first commit"
    $ git push -u origin master


    $ git clone git@github.com:itang/testgit.git

    HEAD 指向指定commit id
    $ git reset --hard commit_id

    回退到上一个版本
    $ git reset --hard HEAD^

    回退到上上版本
    $ git reset --hard HEAD^^

    回退前100个版本
    $ git reset --hard HEAD~100

    查看分支的合并情况
    $ git log --graph --pretty=oneline --abbrev-commit

    显示最后一次提交信息
    $ git log -1

    显示所有的log
    $ git reflog

    恢复到指定的版本
    $ git reset --hard b75ae95

    查看工作区和版本库的区别
    $ git diff HEAD -- readme.txt

    丢弃工作区的修改（回到最近一次git commit或git add时的状态）
    $ git checkout -- file

    把暂存区的修改撤销掉（unstage），重新放回工作区：
    $ git reset HEAD <file>


    创建dev分支，然后切换到dev分支上
    $ git checkout -b dev
    $ git switch -c dev

    $ git branch dev && git checkout dev

    checkout远程分支并track
    $ git checkout -b 0.2.x origin/0.2.x

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
    $ git stash
    $ git stash list
    $ git stash apply
    $ git stash drop
    $ git stash pop

    复制一个特定的提交到当前分支
    $ git cherry-pick 4c805e2

    查看远程信息
    $ git remote
    $ git remote -v

将本地分支与远程 origin/dev 分支建立链接
　　 \$ git branch --set-upstream dev origin/dev

    将指定分支推送到指定远程
    $ git push origin master
    $ git push origin dev

    拉去远程内容
    $ git pull

    打一个新标签
    $ git tag v1.0

    在指定的commit id 打tag
    $ git tag v0.9 f52c633

    -a指定标签名，-m指定说明文字
    $ git tag -a v0.1 -m "version 0.1 released" 1094adb

    查看tag信息
    $ git show <tagname>

    删除标签
    $ git tag -d v0.1

    推送标签到远程
    $ git push origin v1.0

    一次性推送全部尚未推送到远程的本地标签
    $ git push origin --tags

    删除远程标签
    $ git tag -d v0.9
    $ git push origin :refs/tags/v0.9

    list the tags on remote repository 
    $ git ls-remote --tags origin

    查看所有标签(list tags local)
    $ git tag

    rebase 合并多次提交
        git rebase  "重新设置基线" ，为你的当前分支重新设置开始点
        git rebase -i  "-i" 是指交互模式。就是说你可以干预rebase这个事务的过程，包括设置commit message，暂停commit等等

    合并最近的 4 次提交纪录
    $ git rebase -i HEAD~4

    $ git rebase -i [commit_log]

    rebase 的另外一种使用场景：分支合并

    git:(feature1)$ git rebase master
        git 会把 feature1 分支里面的每个 commit 取消掉
        其次，把上面的操作临时保存成 patch 文件，存在 .git/rebase 目录下
        把 feature1 分支更新到最新的 master 分支
        把上面保存的 patch 文件应用到 feature1 分支上

    解决rebase过程中冲突后继续rebase
    git rebase --continue

    用 --abort 参数来终止 rebase 的行动，并且分支会回到 rebase 开始前的状
    git rebase —abort

    拉取时进行rebase
    git pull --rebase

    不分页显示
    $ git config pager.log false
    $ config --global pager.log false
    $ git config parger.branch false

    $ git config core.pager cat
    $ git config --global core.pager cat
    $ git config --global core.pager ''
