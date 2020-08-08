#!/bin/sh
sed -i "/^hosts/c\\hosts=$MYSQL_HOST" /etc/postfix/sql/* 
sed -i "/^user/c\\user=$MYSQL_USER" /etc/postfix/sql/* 
sed -i "/^password/c\\password=$MYSQL_PASSWORD" /etc/postfix/sql/* 
sed -i "/^dbname/c\\dbname=$MYSQL_DATABASE" /etc/postfix/sql/* 
