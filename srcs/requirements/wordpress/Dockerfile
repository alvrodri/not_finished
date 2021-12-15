FROM debian:buster

RUN apt -y update
RUN mkdir -p /var/www/html
RUN apt -y install wget
RUN apt -y install tar
RUN wget https://es.wordpress.org/latest-es_ES.tar.gz
RUN apt -y install php7.3 php7.3-bcmath php7.3-curl php7.3-imagick php7.3-gd php7.3-mbstring php7.3-xml php7.3-zip php7.3-fpm
RUN mkdir /run/php

COPY ./tools/wp-config.php /var/www/html/wordpress/wp-config.php

COPY ./tools/wordpress.sh /wordpress.sh
RUN chmod 777 /wordpress.sh

ENTRYPOINT [ "/wordpress.sh" ]