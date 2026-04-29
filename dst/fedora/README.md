# Fedora

- [fedora - Official Image | Docker Hub](https://hub.docker.com/_/fedora)
- [fedora/fedora · Quay](https://quay.io/repository/fedora/fedora)

## Merit of cache

- [Caching — dnf5 documentation](https://dnf5.readthedocs.io/en/stable/misc/caching.7.html)

Add cache in DNF

```dockerfile
RUN --mount=type=cache,target=/var/cache/libdnf5 \
--mount=type=cache,target=/var/lib/dnf \
dnf -y upgrade && ～～
```

Result

```
# docker images
IMAGE                      ID             DISK USAGE   CONTENT SIZE   EXTRA
myfedora:44-cache          a09305683a73        515MB          128MB        
myfedora:44-nocache        e419616f0356        655MB          187MB        
quay.io/fedora/fedora:44   3de521d4e5fd        264MB         71.4MB     
```