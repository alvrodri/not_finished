#!/bin/bash
tar xf /latest-es_ES.tar.gz -C /var/www/html
mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/$MYSQL_USER/g" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /var/www/html/wordpress/wp-config.php
sed -i "s/localhost/$MYSQL_HOST/g" /var/www/html/wordpress/wp-config.php
chown www-data:www-data /var/www/html/wordpress/ -R
php-fpm7.3 -F
