#!/bin/bash
#tar xf /latest-es_ES.tar.gz -C /var/www/html
#chown www-data:www-data /var/www/html/wordpress/ -R
cd /var/www/wordpress
wp core config --dbhost=$MYSQL_HOST --dbname=wordpress --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --allow-root
wp core install --title="Alvaro" --admin_user="$MYSQL_USER" --admin_password="$MYSQL_PASSWORD" --admin_email="$MYSQL_USER@gmail.com" --url="" --allow-root
wp user create $WP_USER "$WP_USER@gmail.com" --role=author --user_pass=$WP_USER_PASS --allow-root
php-fpm7.3 -F
