#!/bin/sh

# Postfix health command:
# exitcode 0 means postfix is not running
/usr/libexec/postfix/master -t
if [ $? -eq 0 ]
then
    exit 1
fi

# Check if rsyslog is running
kill -0 `cat /run/rsyslogd.pid`
if [ $? -ne 0 ]
then
    exit 1
fi

# check if rsyslog is running
kill -0 `cat /run/crond.pid`
if [ $? -ne 0 ]
then
    exit 1
fi
