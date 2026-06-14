#!/bin/bash
cp -n llama_org.env llama.env

source ./llama.env
docker compose run --rm bench-cuda12
