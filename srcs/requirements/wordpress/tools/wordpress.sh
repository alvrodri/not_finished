#!/bin/bash
tar xf /latest-es_ES.tar.gz -C /var/www/html
mv /wp-config.php /var/www/html/wordpress/wp-config.php
chown www-data:www-data /var/www/html/wordpress/ -R
php-fpm7.3 -F
