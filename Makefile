all:	start

start:
	@mkdir -p /home/alvrodri/data/mariadb
	@mkdir -p /home/alvrodri/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up -d --build

stop:
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker-compose -f ./srcs/docker-compose.yml down -v
	@rm -rf /home/alvrodri/data

re:	fclean all
