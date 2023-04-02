USER=<docker-hub-username>
IMAGE=my-jenkins-agent:latest

.PHONY: build push

default: build

build:
	docker build -t $(USER)/$(IMAGE) .

debug:
	docker run --rm -it --name myagent $(USER)/$(IMAGE) bash

push:
	docker login
	docker push $(USER)/$(IMAGE)