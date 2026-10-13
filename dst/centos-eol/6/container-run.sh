#!/bin/sh
container image pull --arch amd64 quay.io/centos/centos:centos6
container run --platform linux/amd64 --name centos-6 -it -v ./scripts:/mnt/scripts --rm quay.io/centos/centos:centos6 