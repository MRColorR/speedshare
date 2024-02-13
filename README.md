# Unofficial SpeedShare Docker Container 🚀
![Docker Pulls](https://img.shields.io/docker/pulls/mrcolorrain/speedshare?style=flat-square&link=https://hub.docker.com/r/mrcolorrain/speedshare)
![Docker Stars](https://img.shields.io/docker/stars/mrcolorrain/speedshare?style=flat-square&link=https://hub.docker.com/r/mrcolorrain/speedshare)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/MRColorR/speedshare/docker-publish.yml?style=flat&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Fmrcolorrain%2Fspeedshare)


🌟 **If you find this project helpful, please consider leaving a star. Your support is appreciated!**

## Introduction 📖
This repository hosts the Dockerfile and necessary configurations for the unofficial SpeedShare Docker image. It's designed to facilitate the deployment of SpeedShare in Docker environments, supporting both x86_64 and arm64 architectures. This project is not officially affiliated with SpeedShare.

## Features ✨
- **Alpine Base Image**: Utilizes the latest version of Alpine linux for a small footprint.
- **Multi-Architecture Support**: Supports both x86_64 and arm64 architectures.
- **Minimal Configuration**: Easy to set up with minimal configuration required.
- **Persistent UUID**: Supports passing a UUID to maintain device identity across restarts.
- **Auto-Update**: Always updated to be in line with the latest SpeedShare CLI.

## Prerequisites 📋
Ensure Docker is installed on your system. For installation instructions, please refer to the [official Docker documentation](https://docs.docker.com/get-docker/).

## Quick Start 🚀
### Docker cli 🐳
```bash
docker run -d --name speedshare \
-h my_device \
-e CODE=your_authentication_code \
-e SPEEDSHARE_UUID=your_uuid \
mrcolorrain/speedshare 
```
### Docker compose 🐳
```yaml
version: "3.9"
services:
  speedshare:
    container_name: speedshare
    hostname: my_device
    image: mrcolorrain/speedshare
    environment:
      - CODE=your_authentication_code
      - SPEEDSHARE_UUID=your_uuid
    restart: unless-stopped
```

## Disclaimer ⚠️
This Docker container and its configurations are provided "as is" without warranty of any kind. It's an unofficial build and not officially endorsed by SpeedShare.

## Contributing 🤲
Your contributions are welcome! If you'd like to improve the project or fix a bug, please fork the repository and submit a pull request.
