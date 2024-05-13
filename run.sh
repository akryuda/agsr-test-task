#! /bin/bash
set -e

# Make sure docker is installed and running
if ! [ -x "$(command -v docker)" ]; then
    echo "Docker is not installed. Please install docker."
    exit 1
fi

# Current dir name
DIR_NAME="${PWD##*/}"
VERSION_TAG="1.0.0"

# Build and push image
docker build -t "akryuda/${DIR_NAME}:${VERSION_TAG}" ./app
docker login -u $DOCKER_USER \
             -p $DOCKER_PASSWORD
docker push "akryuda/${DIR_NAME}:${VERSION_TAG}"

# Make sure Helm is installed
if ! [ -x "$(command -v helm)" ]; then
    echo "Helm is not installed. Please install Helm."
    exit 1
fi

helm install ./helmchart --generate-name
