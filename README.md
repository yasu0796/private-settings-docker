# private-settings-docker

- [Install | Docker Docs](https://docs.docker.com/engine/install/)

## Other Repositories

- [zabbix/zabbix-docker: Official Zabbix Dockerfiles](https://github.com/zabbix/zabbix-docker)

## Distribution

AMD64, ARM64 are supported.

- CentOS Stream 9, 10
- Debian 12, 13
- Fedora (Latest : 44)
- Oracle Linux 8, 9, 10
- Ubuntu 22.04, 24.04, 26.04

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

Using the script below, allocate a /29 network from within 10.255.0.0/16.

```bash
python scripts/assist_network.py dst/ubuntu/2404
```

## Cloudflare

Copy `certificate.pem` in `certs` directory.
