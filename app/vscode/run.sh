#!/bin/sh
docker pull quay.io/fedora/fedora:45
docker compose build

docker compose up -d
docker compose logs -f 
