#!/bin/sh
# container image pull --arch amd64 quay.io/centos/centos:centos7
container machine create quay.io/centos/centos:centos7 --arch amd64 --name centos-7
container machine run --root -n centos-7