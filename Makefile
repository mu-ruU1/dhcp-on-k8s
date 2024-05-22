.PHONY: docker-build docker-build-debug

docker-build:
	docker build ./docker -t isc-kea:latest -f ./docker/Dockerfile

docker-build-debug:
	docker build ./docker -t isc-kea:debug -f ./docker/Dockerfile.debug
