# poetry

## Usage

    创建新项目
    $poetry new project

    在已有项目（目录）初始化
    $poetry init

    安装依赖和创建虚拟环境
    $poetry install

    添加依赖
    $poetry add pytoml

    添加 --dev 参数可以指定为开发依赖
    $poetry add pytest --dev

    查看包信息
    $poetry show
    $poetry show --tree
    $poetry show --outdated

    执行 poetry update 命令可以更新所有锁定版本的依赖
    $poetry update

    更新指定的包
    $poetry update foo

    激活虚拟环境运行命令
    $poetry run python app.py

    激活虚拟环境
    $peotry shell

    设置PyPI 的账号密码信息
    $poetry config http-basic.pypi username password

    在项目内创建虚拟环境文件夹
    $poetry config settings.virtualenvs.in-project true

    pyproject.toml 设置镜像源
    [[tool.poetry.source]]
    name = "aliyun"
    url = "https://mirrors.aliyun.com/pypi/simple/"

## Ref

* [相比 Pipenv，Poetry 是一个更好的选择](https://zhuanlan.zhihu.com/p/81025311)