#!/usr/bin/make


SHELL = /bin/sh
CURRENT_UID := $(shell id -u):$(shell id -g)

export CURRENT_UID

up:
	docker-compose up -d --build --remove-orphans 
down:
	docker-compose down
volumes:
	docker volume create postgres
	docker volume create pgadmin