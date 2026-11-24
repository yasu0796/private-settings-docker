#!/bin/sh
cp -n devstack_org.env devstack.env
source devstack.env

IMAGE_NAME="mydevstack"
IMAGE_TAG="stream10-${VERSION//[\/.]/-}"

container image pull --arch arm64 quay.io/centos/centos:stream10
container build --build-arg VERSION="${VERSION}" -f Dockerfile -t "${IMAGE_NAME}:${IMAGE_TAG}" .

container machine create --home-mount none "${IMAGE_NAME}:${IMAGE_TAG}"
container machine run --workdir /devstack --name "${IMAGE_NAME}-${IMAGE_TAG}"