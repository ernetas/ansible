.PHONY: build

build:
	docker build --pull --network=host -t ernestas/ansible:latest .
	docker tag ernestas/ansible:latest ernestas/ansible:$$(docker run --rm -ti ernestas/ansible:latest ansible --version | awk '{print $$2}' | head -n 1 | strings | xargs)
	docker push ernestas/ansible:latest
	docker push ernestas/ansible:$$(docker run --rm -ti ernestas/ansible:latest ansible --version | awk '{print $$2}' | head -n 1 | strings | xargs)
	echo "ernestas/ansible:$$(docker run --rm -ti ernestas/ansible:latest ansible --version | awk '{print $$2}' | head -n 1 | xargs)"

