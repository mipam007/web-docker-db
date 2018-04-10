#!/bin/bash


mysql_install_db

/usr/bin/mysqld_safe &

sleep 10s

mysql -v < /tmp/mariadb-setup.sql

kill -9 $(ps axu | grep -v grep | grep mysql | awk '{ print $2}')

sleep 10s

/usr/bin/mysqld_safe
