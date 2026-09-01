#!/bin/sh
# container machine create quay.io/fedora/fedora:44
container image pull --arch arm64 quay.io/fedora/fedora:44
container build -f Dockerfile.machine -t myfedora:44-machine
container machine create myfedora:44-machine
container machine run -n myfedora-44-machine