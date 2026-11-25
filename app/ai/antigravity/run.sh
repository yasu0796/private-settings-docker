#!/bin/sh
touch ./.antigravity-cli/antigravity-oauth-token

docker pull quay.io/fedora/fedora:45
docker compose build
docker compose run --rm antigravity
