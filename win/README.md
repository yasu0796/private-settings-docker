# Windows Container

## Install Windows Container

Check

```powershell
Get-WindowsOptionalFeature -Online -FeatureName containers
```

Install

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName containers -All
```

## Setup Docker

- [Install Docker Engine from binaries | Docker Docs](https://docs.docker.com/engine/install/binaries/#install-server-and-client-binaries-on-windows)
- [Index of win/static/stable/x86_64/](https://download.docker.com/win/static/stable/x86_64/)

Open Admin PowerShell

```powershell
Start-BitsTransfer -Source "https://download.docker.com/win/static/stable/x86_64/docker-29.6.0.zip" -Destination "$Env:USERPROFILE\Downloads\docker.zip"
Expand-Archive "$Env:USERPROFILE\Downloads\docker.zip" -DestinationPath $Env:ProgramFiles
&$Env:ProgramFiles\Docker\dockerd --register-service
Start-Service docker
```

Add system path `%ProgramFiles%\Docker`

## Compose

- [docker/compose: Define and run multi-container applications with Docker](https://github.com/docker/compose)

```powershell
New-Item -Path "$Env:USERPROFILE\.docker\cli-plugins" -ItemType Directory -Force

Start-BitsTransfer -Source "https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-windows-x86_64.exe" -Destination "$Env:USERPROFILE\.docker\cli-plugins\docker-compose.exe"
```


## Image
