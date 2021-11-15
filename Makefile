.PHONY: build

build:
	docker build --pull --network=host -t ernestas/ansible:latest .
	docker tag ernestas/ansible:latest ernestas/ansible:$$(docker run --rm ernestas/ansible:latest ansible --version | head -n 1 | cut -d'[' -f2 | cut -d']' -f1 | strings | awk '{print $$2}')
	docker push ernestas/ansible:latest
	docker push ernestas/ansible:$$(docker run --rm ernestas/ansible:latest ansible --version | head -n 1 | cut -d'[' -f2 | cut -d']' -f1 | strings | awk '{print $$2}')
	echo "ernestas/ansible:$$(docker run --rm ernestas/ansible:latest ansible --version | head -n 1 | cut -d'[' -f2 | cut -d']' -f1 | strings | awk '{print $$2}')"

