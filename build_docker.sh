#!/bin/sh
# This file should not need changes

IMAGE_NAME=${REGISTRY}/${REPOSITORY}:${TAG_NAME}

echo Building image ${IMAGE_NAME}
docker build --rm -t ${IMAGE_NAME} .

