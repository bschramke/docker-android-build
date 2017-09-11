NS = bschramke
IMAGE_TAG = api26
IMAGE_NAME = android-build
IMAGE = $(NS)/$(IMAGE_NAME):$(IMAGE_TAG)
WORKDIR := $(shell pwd)
export IMAGE

.PHONY: build push shell run start stop rm ps release clean

build:
	docker build -t $(IMAGE) .

run: build
	docker run -it --rm -v ${WORKDIR}:/opt/workspace --name $(IMAGE_NAME) $(IMAGE)

default: build
