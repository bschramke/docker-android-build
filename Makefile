NS = arcdashboard.bis.epost-dev.de:5000
IMAGE = $(NS)/android-build-base:dev
WORKDIR := $(shell pwd)
export IMAGE

.PHONY: build push shell run start stop rm ps release clean

build:
	docker build -t $(IMAGE) .

push: build
	docker-compose push

shell: build
	docker-compose run dashboard /bin/bash

run: build
	docker run -it --rm --volume=${WORKDIR}:/opt/workspace --name android-build $(IMAGE)

start: build
	docker-compose start

stop:
	docker-compose stop

rm:
	docker-compose down

ps:
	docker-compose ps

release: push

default: build

clean: rm
