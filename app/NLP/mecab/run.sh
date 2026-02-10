#!/bin/sh
docker compose up -d
docker compose exec -it mecab mecab
docker compose down