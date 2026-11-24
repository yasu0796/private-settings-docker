#!/bin/sh
source devstack.env

IMAGE_NAME="mydevstack"
IMAGE_TAG="stream10-${VERSION//[\/.]/-}"

container machine rm "${IMAGE_NAME}-${IMAGE_TAG}"
