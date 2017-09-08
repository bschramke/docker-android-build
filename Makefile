NS = bschramke
IMAGE = $(NS)/android-build-base:dev
WORKDIR := $(shell pwd)
export IMAGE

.PHONY: build push shell run start stop rm ps release clean

build:
	docker build -t $(IMAGE) .

run: build
	docker run -it --rm -v /tmp/build_cache:/home/mobileci -v ${WORKDIR}:/opt/workspace --name android-build $(IMAGE)

default: build
