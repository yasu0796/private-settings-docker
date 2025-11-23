#!/bin/sh
docker compose up -d
docker compose exec -it ol8 bash
docker compose down