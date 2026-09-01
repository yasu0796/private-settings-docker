#!/bin/sh
container image pull --arch arm64 oraclelinux:10
container build -f Dockerfile.machine -t myoraclelinux:10-machine
container machine create myoraclelinux:10-machine
container machine run -n myoraclelinux-10-machine