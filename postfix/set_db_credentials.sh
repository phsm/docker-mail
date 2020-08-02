#!/bin/sh
sed -i "/hosts/c\\hosts=$MYSQL_HOST" etc/sql/* 
sed -i "/user/c\\user=$MYSQL_USER" etc/sql/* 
sed -i "/password/c\\password=$MYSQL_PASSWORD" etc/sql/* 
sed -i "/dbname/c\\dbname=$MYSQL_DATABASE" etc/sql/* 
