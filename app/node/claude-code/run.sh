#!/bin/sh
touch .claude/.credentials.json
touch .claude/.claude.json
cp -n claude_org.env claude.env

docker compose up -d
docker compose attach claude-code