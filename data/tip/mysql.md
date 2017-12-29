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

    > show grants for someuser;

    > GRANT ALL PRIVILEGES ON *.* TO'root'@'%'IDENTIFIED BY '密码' WITH GRANT OPTION;
    > GRANT ALL PRIVILEGES ON `somedb`.* TO 'someuser'@'%'  IDENTIFIED BY 'somepassword';
    > GRANT ALL PRIVILEGES ON `somedb`.* TO 'someuser'@'%'  IDENTIFIED BY 'somepassword' WITH GRANT OPTION;
    > GRANT SELECT ON `somedb`.* TO 'someuser_ro'@'%'  IDENTIFIED BY 'somepassword_ro';
