NS = bschramke
IMAGE_TAG = 8-jdk-alpine
IMAGE_NAME = android-build-base
IMAGE = $(NS)/$(IMAGE_NAME):$(IMAGE_TAG)
WORKDIR := $(shell pwd)
export IMAGE

.PHONY: build push shell run start stop rm ps release clean

build:
	docker build -t $(IMAGE) .

run: build
	docker run -it --rm -v ${WORKDIR}:/opt/workspace --name android-build $(IMAGE)

default: build
