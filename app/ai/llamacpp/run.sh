#!/bin/sh
cp -n llama_org.env llama.env
. ./llama.env

docker compose pull server${IMAGE_TYPE}
docker compose up -d server${IMAGE_TYPE}
