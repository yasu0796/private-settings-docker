# private-settings-docker

## Other Repositories

- [yasu0796/zabbix-docker: Official Zabbix Dockerfiles (under development, not ready for production)](https://github.com/yasu0796/zabbix-docker)

## Distibution

AMD64, ARM64 are supported.

- CentOS Stream 9, 10
- Debian 12, 13
- Fedora (Latest : 42)
- Oracle Linux 8, 9, 10
- Ubuntu 22.04, 24.04

## Application

### for Common use

- Wordpress
- RabbitMQ

### for Apple Silicon, Linux Server

AMD64 only, so you need Rosetta.

- GitLab CE
- Splunk

### for Chromebook

AMD64, ARM64 are supported.

- vscode

## Network

By default, Docker allocates large networks such as 172.16.0.0/16, 172.17.0.0/16, even for small-scale use case.

Using the script below, allocate a /29 network from within 10.10.255.0/16.

```bash
python scripts/assist_network.py dst/ubuntu/2404
```

## Scripts

```bash
docker system df
docker builder prune
```