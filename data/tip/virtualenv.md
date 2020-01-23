# virtualenv

## Usage

    创建一个独立的Python运行环境，命名为venv
    命令virtualenv就可以创建一个独立的Python运行环境，我们还加上了参数--no-site-packages，这样，已经安装到系统Python环境中的所有第三方包都不会复制过来，这样，我们就得到了一个不带任何第三方包的“干净”的Python运行环境

    $ virtualenv --no-site-packages venv

    激活此虚拟环境
    $ source venv/bin/activate

    退出此虚拟环境
    $ deactivate
