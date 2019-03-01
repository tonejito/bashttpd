SHELL=/bin/bash

NAMESPACE=tonejito
IMAGE=bashttpd
TAG=latest

FULL_TAG=$(NAMESPACE)/$(IMAGE):$(TAG)

.PHONY:	all build run push

all:	build run

build:
	docker build --tag $(FULL_TAG) .
	docker image list  $(FULL_TAG)

run:
	docker run -it $(FULL_TAG)

push:
	docker push $(FULL_TAG)
