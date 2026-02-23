#!/bin/sh
docker compose logs db | grep "GENERATED ROOT PASSWORD"