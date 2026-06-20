# Apple Container README

## Kernel Update

The latest kernel version is here.

https://github.com/search?q=repo%3Aapple%2Fcontainer+kata-containers+language%3ASwift&type=code&l=Swift

```bash
container system kernel set --recommended
```

Nested is not supported M1 Mac.

## ARM Only

By default, all platform images (not just ARM) are downloaded. Limit to ARM only.

```bash
export CONTAINER_DEFAULT_PLATFORM=linux/arm64
```

