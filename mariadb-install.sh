#!/bin/bash

chown -R mysql: /var/lib/mysql

mysql_install_db --user mysql &

sleep 10s

mysql -v < /tmp/mariadb-setup.sql

kill -9 $(ps axu | grep mysql | grep -v | awk '{ print $2 }')

sleep 10s

mysqld_safe --user mysql

