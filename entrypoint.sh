#!/bin/bash

# Wait for the SQL server to start
while ! mysqladmin ping -h"localhost" --silent; do
    sleep 1
done

mysql -u root -p$MARIADB_ROOT_PASSWORD -e "CREATE DATABASE mydatabase;"
mysql -u root -p$MARIADB_ROOT_PASSWORD -e "GRANT ALL ON mydatabase.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword';"
mysql -u root -p$MARIADB_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"


