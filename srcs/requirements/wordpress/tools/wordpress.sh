#!/bin/bash
tar xf /latest-es_ES.tar.gz -C /var/www/html
chown www-data:www-data /var/www/html/wordpress/ -R
php-fpm7.3 -F
