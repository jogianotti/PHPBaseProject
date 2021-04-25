.PHONY: start
start:
	docker-compose up --detach

.PHONY: stop
stop:
	docker-compose stop

.PHONY: build
build:
	docker-compose build

.PHONY: deps
deps: composer/install

composer/install:
	docker-compose exec --user $(id -u):$(id -g) php composer install