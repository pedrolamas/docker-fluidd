# docker-fluidd

[![Project Maintenance](https://img.shields.io/maintenance/no/2023.svg)](https://github.com/pedrolamas/docker-fluidd 'GitHub Repository')
[![License](https://img.shields.io/github/license/pedrolamas/docker-fluidd.svg)](https://github.com/pedrolamas/docker-fluidd/blob/master/LICENSE 'License')

[![Release](https://github.com/pedrolamas/docker-fluidd/workflows/Release/badge.svg)](https://github.com/pedrolamas/docker-fluidd/actions 'Build Status')

[![Twitter Follow](https://img.shields.io/twitter/follow/pedrolamas?style=social)](https://twitter.com/pedrolamas '@pedrolamas')

Simple Docker image running the latest [Fluidd](https://github.com/fluidd-core/fluidd#readme)

This repo will run a GitHub action every 20 minutes to check for new code on the "master" and "develop" branches of the Fluidd repository, and creates new Docker images if there are any modifications.

## ⚠️ WARNING ⚠️

Fluidd currently provides [official Docker images](https://github.com/fluidd-core/fluidd/pkgs/container/fluidd) that match the ones provided here.

As such, this repo has been deprecated as it is legacy and no longer maintained.

## Usage

Create and run the new container as you would normally do:

```sh
docker run -d \
  --name fluidd \
  --net=host \
  ei99070/docker-fluidd
```

By default the server runs on port 80, but this can be changed by specifying the `PORT` environment variable.

```sh
docker run -d \
  --name fluidd \
  --net=host \
  -e PORT=<alternative port> \
  ei99070/docker-fluidd
```

## Available tags

- `latest` or `master`: points to "master" branch
- `latest-dev` or `develop`: points to "develop" branch
- `sha-<hash>`: points to the GitHub commit hash

## License

MIT
