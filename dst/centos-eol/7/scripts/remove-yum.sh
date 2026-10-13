#!/bin/sh
rm -rf /etc/yum.repos.d/CentOS-*.repo
cp files/jaist.repo /etc/yum.repos.d/

yum clean all
