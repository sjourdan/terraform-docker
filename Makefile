.DEFAULT_GOAL := help
DOCKER_USER=sjourdan
PRODUCT=terraform

build: ## Build Container
	docker build -t $(DOCKER_USER)/$(PRODUCT) .

dev:	## Build a dev version
	docker build -t $(DOCKER_USER)/$(PRODUCT):dev -f Dockerfile.dev .

lint: ## Lint Docker
	docker run --rm -v $$PWD:/root/ projectatomic/dockerfile-lint dockerfile_lint
	hadolint Dockerfile

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
