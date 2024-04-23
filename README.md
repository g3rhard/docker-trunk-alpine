# docker-trunk-ubuntu

> Docker image with trunk.io for quick code checks

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/g3rhard/docker-trunk-ubuntu/production.yml?branch=production&style=for-the-badge&logo=github&color=333333)](https://github.com/g3rhard/docker-trunk-ubuntu/actions/workflows/production.yml)
[![Docker Image Version](https://img.shields.io/docker/v/g3rhard/docker-trunk-ubuntu?style=for-the-badge&logo=docker&logoColor=white&color=333333)](https://hub.docker.com/r/g3rhard/docker-trunk-ubuntu)

## Usage example

```sh
docker run --rm -v $(pwd):/code g3rhard/docker-trunk-ubuntu trunk check /code
```

This command runs trunk.io checks on the code in your current directory using the Docker image.
