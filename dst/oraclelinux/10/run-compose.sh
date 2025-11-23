#!/bin/sh
docker compose up -d
docker compose exec -it ol10 bash
docker compose down