#!/bin/sh
# container machine create quay.io/fedora/fedora:45
container image pull --arch arm64 quay.io/fedora/fedora:45
container build -f Dockerfile.machine -t myfedora:45-machine
container machine create myfedora:45-machine
container machine run -n myfedora-45-machine