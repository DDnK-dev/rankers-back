IMAGE_NAME = "docker.io/wdk1994/rankers-back:latest"
TAG = "latest"

# Setup virtualenv
setup:
	python3 -m venv venv
	. venv/bin/activate
	pip install -r requirements.txt

# build docker image
build:
	docker build -t $(IMAGE_NAME) .

# push docker image
push: build
	docker push $(IMAGE_NAME)

# run docker image
run:
	docker run -d -p 8080:8080 $(IMAGE_NAME) --name rankers-back

# python freeze
freeze:
	pip list --format=freeze > requirements.txt
