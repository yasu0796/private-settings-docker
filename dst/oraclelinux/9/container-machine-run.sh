#!/bin/sh
container image pull --arch arm64 oraclelinux:9
container build -f Dockerfile.machine -t myoraclelinux:9-machine
container machine create myoraclelinux:9-machine
container machine run -n myoraclelinux-9-machine