#!/bin/sh
docker compose up -d
docker compose exec -it ubuntu2604 bash
docker compose down