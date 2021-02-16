TAG:=4.0.3
IMAGE:=andreburgaud/sslyze

default: help

help:
	@echo 'SSLyze ${TAG} Docker image build file'
	@echo
	@echo 'Usage:'
	@echo '    make clean           Delete dangling and SSLyze images'
	@echo '    make build           Build the SSLyze image using local Dockerfile'
	@echo '    make github          Push commit changes and tag to Github'
	@echo

build:
	DOCKER_BUILDKIT=1 docker build --build-arg SSLYZE_VERSION=${TAG} -t ${IMAGE}:${TAG} .

clean:
	# Remove containers with exited status:
	docker rm `docker ps -a -f status=exited -q` || true
	docker rmi ${IMAGE}:latest || true
	docker rmi ${IMAGE}:${TAG} || true
	# Delete dangling images
	docker rmi `docker images -f dangling=true -q` || true

github:
	git push
	git tag -a ${TAG} -m 'Version ${TAG}'
	git push origin --tags

.PHONY: help build clean github
