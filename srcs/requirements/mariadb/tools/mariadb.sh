#!/bin/bash
service mysql start
mysql_secure_installation << EOF

Y
$MYSQL_ROOT_PASSWORD
$MYSQL_ROOT_PASSWORD
Y
Y
Y
Y
EOF
mysql -e "CREATE DATABASE wordpress charset utf8mb4 collate utf8mb4_unicode_ci"
mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'*'"
mysql -e "FLUSH PRIVILEGES"
service mysql stop
mysqld_safe
