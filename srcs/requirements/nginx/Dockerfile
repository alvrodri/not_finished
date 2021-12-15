FROM debian:buster

RUN apt -y update
RUN apt -y install nginx

COPY ./tools/default /etc/nginx/sites-available/default

CMD [ "bash" ]