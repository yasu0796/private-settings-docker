#!/bin/sh
cp -n llama_org.env llama.env

# docker compose up -d server-cuda12
docker compose up -d server
