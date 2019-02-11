#!/usr/bin/env bash

echo "Duplicate planet4 dev database"
mysqldump -u root --password="$MYSQL_ROOT_PASSWORD" planet4_dev > /tmp/data-dump.sql
echo "Create planet4 wpunit database"
mysql -u root --password="$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE planet4_wpunit_test"
mysql -u root --password="$MYSQL_ROOT_PASSWORD" planet4_wpunit_test < /tmp/data-dump.sql