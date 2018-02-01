# mysql

## Usage

    $ mysql -uroot -h 192.168.0.1 -P 3306 -p dbname

## mysqldump

    mysqldump -uroot -p123456 -h192.168.0.1 somedb --lock-all-tables --routines --triggers --default-character-set=utf8 --quick > somedb.db

## mysql client

    > show databases;
    > use somedatabase;
    > show tables;

    > select User, Host from mysql.user;
    > update mysql.user set password=password('新密码') where User="root";
    > UPDATE mysql.user SET authentication_string=PASSWORD('13584368554') WHERE User='root';

    > show grants for someuser;

    > GRANT ALL PRIVILEGES ON *.* TO'root'@'%'IDENTIFIED BY '密码' WITH GRANT OPTION;
    > GRANT ALL PRIVILEGES ON `somedb`.* TO 'someuser'@'%'  IDENTIFIED BY 'somepassword';
    > GRANT ALL PRIVILEGES ON `somedb`.* TO 'someuser'@'%'  IDENTIFIED BY 'somepassword' WITH GRANT OPTION;
    > GRANT SELECT ON `somedb`.* TO 'someuser_ro'@'%'  IDENTIFIED BY 'somepassword_ro';

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