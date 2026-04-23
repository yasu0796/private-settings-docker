# PowerShell

- [Microsoft Artifact Registry](https://mcr.microsoft.com/en-us/artifact/mar/dotnet/sdk/about)
- [dotnet-docker/README.sdk.md at main · dotnet/dotnet-docker](https://github.com/dotnet/dotnet-docker/blob/main/README.sdk.md)

## Basic Usage

```bash
docker pull mcr.microsoft.com/dotnet/sdk:10.0
```

## Version Information

AMD64, ARM64 are supported.

## Images

| TAG                    | IMAGE ID         | CREATED      | SIZE    |
|------------------------|------------------|--------------|---------|
| 10.0                   | 8a90a473da52     | 2026/04/23   | 1.3GB   |
| 10.0-noble             | 8a90a473da52     | 2026/04/23   | 1.3GB   |
| 10.0-azurelinux3.0     | 4f08dbd55f00     | 2026/04/23   | 1.36GB  |
| 10.0-resolute          | ac75136590a2     | 2026/04/23   | 1.36GB  |
| 10.0-alpine            | 0191ff386e93     | 2026/04/23   | 1.01GB  |

`10.0` is the same as `10.0-noble`.

`10.0-alpine` is the smallest image.

But `10.0-alpine` ARM image does not contain pwsh. (AMD64 is no problem)