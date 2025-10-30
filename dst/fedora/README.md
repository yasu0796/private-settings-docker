# Fedora

- [fedora - Official Image | Docker Hub](https://hub.docker.com/_/fedora)
- [fedora/fedora · Quay](https://quay.io/repository/fedora/fedora)

## Merit of cache

Add cahce in DNF

```dockerfile
RUN --mount=type=cache,target=/var/cache/dnf \
--mount=type=cache,target=/var/lib/dnf \
dnf -y upgrade && ～～
```

Result

```
# docker images
REPOSITORY   TAG          IMAGE ID       CREATED              SIZE
myfedora     40-cache     92e7e2705c65   21 seconds ago       444MB
myfedora     40           596a91820b82   About a minute ago   529MB
fedora       40           5e22da79803c   3 months ago         222MB
```