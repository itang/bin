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
    > \db;
