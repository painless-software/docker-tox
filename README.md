Tox
===

*Available on Docker Hub as [`painless/tox`](https://hub.docker.com/r/painless/tox/).*

Alternative Docker base image for Python testing with [tox](https://tox.readthedocs.io/en/latest/). If you need Git.

Details
-------

Derives from [`themattrix/tox`](https://hub.docker.com/r/themattrix/tox/), which you should use if you don't need Git.

- [Usage](https://github.com/themattrix/docker-tox#usage) (README of the parent image)
- [Contribute](https://github.com/painless-software/docker-tox/) (GitHub repository)

Supported Tags
--------------

- [`latest`](https://github.com/painless-software/docker-tox/blob/master/Dockerfile#L7-L8) (base image with tox and Git)
- [`multi`](https://github.com/painless-software/docker-tox/blob/multi/Dockerfile#L7-L9) (provides additional software for running tests against multiple technologies, such as PHP Composer)

Example
-------

Run tests with tox from your repository root:

``` yaml
# docker-compose.yml

version: '2'

services:
  app:
    image: painless/tox
    volumes:
      - .:/app

```
