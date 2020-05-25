start:
	docker-compose up -d

start-build:
	docker-compose up -d --build

stop:
	docker-compose down -v --rmi local

login-mysql:
	docker-compose exec mysql_db /bin/bash

login-apache:
	docker-compose exec apache /bin/bash

login-php:
	docker-compose exec php /bin/bash


