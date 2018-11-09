#
# Makefile for dreadlabs/php-base
#
# @see http://www.itnotes.de/docker/development/tools/2014/08/31/speed-up-your-docker-workflow-with-a-makefile/
# @see http://stackoverflow.com/a/10858332
#

NS = dreadlabs
FILE = Dockerfile
CONTEXT = .

REPO = php-base
NAME = php-base
INSTANCE = default

.PHONY: build shell release versions start stop rm check-env

check-env:
ifndef VERSION
	$(error VERSION is undefined)
endif

build: check-env
	docker build --file $(FILE) -t $(NS)/$(REPO):$(VERSION) $(CONTEXT)

push: check-env
	docker push $(NS)/$(REPO):$(VERSION)

shell: check-env
	docker run --rm --name $(NAME)-$(INSTANCE) --interactive --tty $(NS)/$(REPO):$(VERSION) /bin/bash

start: check-env
	docker run -d --name $(NAME)-$(INSTANCE) $(NS)/$(REPO):$(VERSION)

stop:
	docker stop $(NAME)-$(INSTANCE)

rm:
	docker rm $(NAME)-$(INSTANCE)

release:
	make push -e VERSION=$(VERSION)

versions:
	docker images | grep $(NS)/$(REPO)

versions-avail:
	@ls -d1 */

default: build
