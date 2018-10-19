include makefiles/task.mk
include makefiles/deploy-ghpages.mk
include test.mk

export NAME ?= Harry Potter local
NAME_IMAGE ?= marlonric/orbis-training-docker
DOCKER_TAG ?= 2.0.0
DOCKER_IMAGE ?= ${NAME_IMAGE}:${DOCKER_TAG}
DOCKER_VOLUME = ${PWD}/app:/app

project-workspace:
	@docker run -v $PWD/app:/app --entrypoint=/bin/ls marlonric/orbis-training-docker:2.0.0 -l /app
install:
	@docker run --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm install
start:
	docker run -p "3030:1042" -p "35729:35729" --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm start
release:
	docker run --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm run release
greet:
	@docker run -v ${PWD}/resources:/resources -e NAME="${NAME}" node:10.10.0-slim bash /resources/example.sh
	@bash ./resources/example.sh
curl:
	@docker run --network="orbis-training-project_default" node:10.10.0-slim curl http://orbis-training-docker:1042
resources:
	@echo "Hola arecursos!"
	@echo ${DOCKER_IMAGE}

.PHONY: resources curl greet release start install
