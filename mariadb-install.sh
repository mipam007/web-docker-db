#!/bin/bash
chown -R mysql: /var/lib/mysql
mysql_install_db --user mysql &

sleep 10s

mysql -v < /tmp/

