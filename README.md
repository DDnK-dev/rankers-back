# rankers-back

rakers-back is a backend module based on the Fast API from the rankers project.

## Pre-requisites

- Python 3.9 or higher
- Docker
- Docker Compose (optional)

## Installation

### (option 1) Docker

Get the image from Docker Hub:

```bash
docker run -d -p 8000:8000 --name rankers-back wdk1994/rankers-back
```

### (option 2) Makefile

Clone the repository, then run the following command:

```bash
make run
```

### API Documentation

The documentation is available at the following address:

> run the application, then open the following link in your browser: \
> http://127.0.0.1:8080/docs

## Development

### Set up the environment

```bash
git clone https://github.com/DDnK-dev/rankers-back.git

cd rankers-back
git config --local commit.template .github/commit-message.txt
```

### Dependencies

```bash
make setup
```

### Development using Docker Compose

```bash
cd resources
docker-compose up -d
```
