#!/bin/sh
cp -n llama_org.env llama.env

# docker compose up -d server-cuda13
docker compose up -d server
