#!/bin/bash
sudo service mysql start
sudo mysql_secure_installation << EOF

Y
$MYSQL_ROOT_PASSWORD
$MYSQL_ROOT_PASSWORD
Y
Y
Y
Y
EOF
sudo mysql -e "CREATE DATABASE wordpress charset utf8mb4 collate utf8mb4_unicode_ci"
sudo mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%'"
sudo mysql -e "FLUSH PRIVILEGES"
sudo service mysql stop
sudo mysqld_safe
