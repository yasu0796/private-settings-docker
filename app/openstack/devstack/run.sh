#!/bin/sh
docker pull quay.io/centos/centos:stream10
docker compose build
docker compose up -d

docker compose exec -it devstack bash