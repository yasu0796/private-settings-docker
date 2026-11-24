#!/bin/sh
cp -n devstack_org.env devstack.env

docker pull quay.io/centos/centos:stream10
docker compose --env-file devstack.env build
docker compose up -d

docker compose exec -it devstack bash