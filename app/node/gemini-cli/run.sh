#!/bin/sh
cp -n gemini_api_key_org.env gemini_api_key.env
docker compose up -d
docker compose attach gemini