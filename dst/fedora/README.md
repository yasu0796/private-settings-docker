# Fedora

- [fedora - Official Image | Docker Hub](https://hub.docker.com/_/fedora)
- [fedora/fedora · Quay](https://quay.io/repository/fedora/fedora)

## Merit of cache

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
myfedora:43-cache          c7885332775f        529MB          122MB        
myfedora:43-nocache        3958f27c545e        684MB          185MB        
quay.io/fedora/fedora:43   3f4c89774b10        275MB           67MB     
```