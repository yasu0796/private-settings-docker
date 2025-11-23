#!/bin/sh
docker compose up -d
docker compose exec -it ol9 bash
docker compose down