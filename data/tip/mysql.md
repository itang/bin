# mysql

## Usage

    $ mysql -uroot -h 192.168.0.1 -P 3306 -p dbname

## mysqldump

    mysqldump -uroot -p123456 -h192.168.0.61 chipseadb_v1.4 --lock-all-tables --routines --triggers --default-character-set=utf8 --quick > chipseadb.db
