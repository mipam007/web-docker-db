#!/bin/sh

chown -R mysql: /var/lib/mysql

mysql_install_db --user=mysql &

sleep 10s

mysqld_safe

mysql -v < /tmp/mariadb-setup.sql

kill -9 $(ps axu | grep -v grep | grep mysql | awk '{ print $2}')

sleep 5s

mysqld_safe --user=mysql

