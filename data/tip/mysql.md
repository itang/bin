# mysql

## Run

    $ docker run -ti --rm --name some-mysql -e MYSQL_ROOT_PASSWORD=123456 mysql

    mysql 8
    $ docker run -ti --rm --name some-mysql -e MYSQL_ROOT_PASSWORD=123456 mysql mysqld --default-authentication-plugin=mysql_native_password

## Usage

    $ mysql -uroot -h 192.168.0.1 -P 3306 -p dbname

    $ mysql -u root -p -e "create database testdb";
    $ mysql -u root -p < somepath/source.sql

    $> CREATE DATABASE IF NOT EXISTS thedatabase_name DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
    $> create database if not exists thedatabase_name default charset utf8mb4 collate utf8mb4_general_ci;

    ref: https://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
    $> create database if not exists thedatabase_name default charset utf8mb4 collate utf8mb4_unicode_ci;


## mysqldump

    mysqldump -uroot -p123456 -h192.168.0.1 somedb --lock-all-tables --routines --triggers --default-character-set=utf8 --quick > somedb.db

## mysql client

    > show databases;
    > use somedatabase;
    > show tables;

    create user
    > CREATE USER 'root'@'%' IDENTIFIED BY 'root';
    > select User, Host from mysql.user;
    > update mysql.user set password=password('新密码') where User="root";
    > UPDATE mysql.user SET authentication_string=PASSWORD('13584368554') WHERE User='root';

    > show grants for someuser;

    > GRANT ALL PRIVILEGES ON *.* TO'root'@'%'IDENTIFIED BY '密码' WITH GRANT OPTION;
    > GRANT ALL PRIVILEGES ON `somedb`.* TO 'someuser'@'%'  IDENTIFIED BY 'somepassword';
    > GRANT ALL PRIVILEGES ON `somedb`.* TO 'someuser'@'%'  IDENTIFIED BY 'somepassword' WITH GRANT OPTION;
    > GRANT SELECT ON `somedb`.* TO 'someuser_ro'@'%'  IDENTIFIED BY 'somepassword_ro';

## mysql config

    > show variables like 'long%';
    > show variables like 'slow%';
    > show variables like '%engine%';

    > show variables like 'max_connections';

    > show create table table1;


    MySQL 进程
    > SHOW PROCESSLIST;
    > SHOW FULL PROCESSLIST;

    MySQL 版本
    > select version();

    慢查询日志
    > select * from  mysql.slow_log order by start_time desc limit 5;

## mysql DDL

    > create table user(id varchar(36), name varchar(100) not null, age int not null, del_flag int(1) default 0, created_at datetime, description text, primary key (id));

    > ALTER TABLE table1 ADD CONSTRAINT FK_table1tabl2 ADD FOREIGN KEY (table2_id) REFERENCES table2 (id);
    > alter table table1 drop FOREIGN KEY FK_table1tabl2;

    > CREATE UNIQUE INDEX index_name ON table_name (column1, column2, ...);
    > CREATE INDEX idx_lastname ON Persons (LastName);
    > CREATE INDEX idx_pname ON Persons (LastName, FirstName);
    > ALTER TABLE table_name DROP INDEX index_name;

    > SHOW INDEX FROM table_name;
    > SHOW keys FROM table_name;

## mysql functions

    > select DATE_FORMAT(now(),'%y-%m-%d %H:%i:%s')
    > select DATE_FORMAT(now(),'%Y-%m-%d %H:%i:%s')

### date_add, date_sub

`DATE_ADD(date,interval expr unit)`
`DATE_SUB(date,interval expr unit)`

作用: 增加/减少日期时间

```
其中Date表示日期格式，其中就包括: 如
2017-12-27，now() 等格式。
expr：表示数量。
unit：表示单位，支持毫秒(microsecond)，秒(second)，小时(hour)，天(day)，周(week)，年(year)等。
```

### 加密

- md5()

- des_encrypt(加密) / des_decrypt(解密);

- sha1()

- password()

### 字符串连接

`concat(str,str2,str3)`

    > select concat("andy","qian");

### JSON函数

- json_object(函数)

    > select json_object("name","andyqian","database","MySQL");

- json_array

- json_valid

其中为有效json字符串时为1。无效json字符串时为0.

    > select json_valid('{"name": "andyqian", "database": "MySQL"}');

### distinct()

去重

    > select count(distinct(name))/count(*) from t_base_user;

### 类型转换

命令： CAST(expr AS type)

    > select cast(18700000000 as char);

### 字符长度

    > select char_length('andyqan')