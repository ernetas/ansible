.PHONY: build

build:
	docker build --pull --network=host -t ernestas/ansible .
