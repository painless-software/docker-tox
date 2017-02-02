Tox
===

*Available on Docker Hub as [`painless/tox`](https://hub.docker.com/r/painless/tox/).*

Alternative Docker base image for Python testing with [tox](https://tox.readthedocs.io/en/latest/). If you need Git.

Details
-------

Derives from [`themattrix/tox`](https://hub.docker.com/r/themattrix/tox/), which you should use if you don't need Git.

- [Usage](https://github.com/themattrix/docker-tox#usage) (README of the parent image)
- [Contribute](https://github.com/painless-software/docker-tox/) (GitHub repository)

Example
-------

Run tests with tox from your repository root:

```
# docker-compose.yml

version: '2'

services:
  app:
    image: painless/tox
    volumes:
      - .:/app

```
