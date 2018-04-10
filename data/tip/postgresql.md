# PostgreSQL

## Config

`/etc/postgresql/10/main/pg_hba.conf`

## Usage

    $ sudo -u postgres psql
    $ ALTER USER postgres PASSWORD 'newPassword';
    $ ALTER USER postgres PASSWORD 'postgres';

    $ sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

## psql

    $ psql -U postgres -h localhost

    psql 命令
    > \?

    表空间
    > \db;

    查询数据库
    > \l
    > \l+

    切换数据库
    > \c dbname
    > \connect dbname

    列出表
    > \dt

    列出表、视图、序列
    > \d
    > \d tablename
