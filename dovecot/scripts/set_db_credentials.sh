#!/bin/sh
sed -i "/^connect\ =/c\\connect = host=$MYSQL_HOST dbname=$MYSQL_DATABASE user=$MYSQL_USER password=$MYSQL_PASSWORD" /etc/dovecot/dovecot-sql.conf.ext
