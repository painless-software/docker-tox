Tox
===

[![dockeri.co](http://dockeri.co/image/painless/tox)](https://hub.docker.com/r/painless/tox/)

[![MIT License](https://img.shields.io/github/license/painless-software/docker-tox.svg)](https://github.com/painless-software/docker-tox/blob/master/LICENSE
) [![GitHub issues](https://img.shields.io/github/issues-raw/painless-software/docker-tox.svg)](https://github.com/painless-software/docker-tox/issues
) [![GitHub PRs](https://img.shields.io/github/issues-pr-raw/painless-software/docker-tox.svg)](https://github.com/painless-software/docker-tox/pulls)

Alternative Docker base image for Python testing with [tox](https://tox.readthedocs.io/en/latest/). If you need Git or database client libraries for running your tests.

Ships with the prerequisites for installing `psycopg2`, `mysql-python` and `mysqlclient`, and optionally some other software.

Python Test Automation
----------------------

Derives from [`themattrix/tox`](https://hub.docker.com/r/themattrix/tox/), which you may use if you don't need Git, database client libraries, etc.

- [Usage](https://github.com/themattrix/docker-tox#usage) (README of the parent image)
- [Contribute](https://github.com/painless-software/docker-tox/) (GitHub repository)

Supported Tags
--------------

- [![latest](
  https://img.shields.io/badge/-latest-blue.svg?colorA=22313f&colorB=4a637b&logo=docker)](
  https://github.com/painless-software/docker-tox/blob/master/Dockerfile#L7-L10) [![size/layers](
  https://images.microbadger.com/badges/image/painless/tox:latest.svg)](
  https://microbadger.com/images/painless/tox) (base image with tox and Git, prepared for Postgres and MariaDB)
- [![kubernetes](
  https://img.shields.io/badge/-kubernetes-blue.svg?colorA=22313f&colorB=4a637b&logo=docker)](
  https://github.com/painless-software/docker-tox/blob/master/kubernetes/Dockerfile#L16-L20) [![size/layers](
  https://images.microbadger.com/badges/image/painless/tox:kubernetes.svg)](
  https://microbadger.com/images/painless/tox) (with additional software for running tests/linting against Kubernetes manifests)
- [![multi](
  https://img.shields.io/badge/-multi-blue.svg?colorA=22313f&colorB=4a637b&logo=docker)](
  https://github.com/painless-software/docker-tox/blob/master/multi/Dockerfile#L17-L19) [![size/layers](
  https://images.microbadger.com/badges/image/painless/tox:multi.svg)](
  https://microbadger.com/images/painless/tox) (provides additional software for running tests against multiple technologies, such as PHP Composer)

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

Pragmatic Tips
--------------

### Speed up your builds

Build your own image running `tox --notest` with your `tox.ini` file, push it to your (private) registry, and use that image for your builds.
When your builds run, any missing -- and only those! -- dependencies are installed. Your builds will be lightning-fast and still reliable!
