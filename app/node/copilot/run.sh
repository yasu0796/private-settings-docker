#!/bin/sh
touch ./.copilot/config.json

docker compose up -d
docker compose attach copilot