FROM debian:buster

RUN apt -y update
RUN apt -y install nginx

COPY ./tools/default /etc/nginx/sites-available/default
RUN mkdir -p /etc/ssl/private
RUN apt -y install openssl
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN chmod 700 /etc/ssl/private && \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/nginx_server.key -out /etc/ssl/certs/nginx_server.crt

ENTRYPOINT [ "nginx" ]
