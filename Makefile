all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/cdisci/data
db:
	mkdir /home/cdisci/data/db
wp:
	mkdir /home/cdisci/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
