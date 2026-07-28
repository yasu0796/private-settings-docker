#!/bin/sh
touch ./.antigravity-cli/antigravity-oauth-token

docker compose build
docker compose run --rm antigravity