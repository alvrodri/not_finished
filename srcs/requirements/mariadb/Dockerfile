FROM debian:buster

RUN apt -y update
RUN apt -y install sudo
RUN apt -y install mariadb-server

COPY ./tools/mariadb.sh /mariadb.sh
RUN chmod 777 /mariadb.sh

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/wordpress.sql /wordpress.sql

RUN chmod 777 /wordpress.sql

ENTRYPOINT [ "/mariadb.sh" ]
