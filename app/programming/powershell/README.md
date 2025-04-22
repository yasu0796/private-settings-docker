# PoserShell

- [Microsoft Artifact Registry](https://mcr.microsoft.com/en-us/artifact/mar/dotnet/sdk/about)
- [dotnet-docker/README.sdk.md at main · dotnet/dotnet-docker](https://github.com/dotnet/dotnet-docker/blob/main/README.sdk.md)

## Basic Usage

```bash
docker pull mcr.microsoft.com/dotnet/sdk:8.0
```

## Version Information

AMD64, ARM64 are supported.

8 is LTS, 9 is STS.

10 is preview version and will become LTS.

## Images

| TAG                    | IMAGE ID         | CREATED      | SIZE    |
|------------------------|------------------|--------------|---------|
| 8.0-azurelinux3.0      | 285dec1e05bf     | 2025/04/10   | 887MB   |
| 8.0                    | b04296b830b1     | 2025/04/09   | 836MB   |
| 8.0-bookworm-slim      | b04296b830b1     | 2025/04/09   | 836MB   |
| 8.0-alpine             | 66475da93b00     | 2025/04/09   | 688MB   |
| 8.0-noble              | 031252393dd7     | 2025/04/09   | 822MB   |

`8.0` is the as same as `8.0-bookworm-slim`.

`8.0-alpine` is the smallest image.