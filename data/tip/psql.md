# psql

## Usage

```
# 初始化数据
initdb.exe -D D:/data/PostgreSQL/16/data -E UTF8

# 启动服务
pg_ctl -D D:/data/PostgreSQL/16/data -l logfile.txt start

pg_ctl -D D:/data/PostgreSQL/16/data -l logfile.txt start

# psql postgres

> CREATE USER root with superuser password 'test123456';

> CREATE DATABASE testdb WITH OWNER root;

> \connect testdb root
> create table b_user (
    id varchar(36) primary key,
    name varchar(200),
    age int,
    sex varchar(10),
    birthday timestamp, 
    createdTime timestamp 
 );
```

```
psql -U username -d database_name

```

创建新用户并分配权限：

```
CREATE USER new_user WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE database_name TO new_user;
```

停服务:

```
pg_ctl stop -m smart -D D:/data/PostgreSQL/16/data

pg_ctl status -D D:/data/PostgreSQL/16/data
```

备份和恢复:

```
pg_dump -U username database_name > backup.sql
psql -U username database_name < backup.sql
```
