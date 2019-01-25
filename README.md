Tox
===

[![dockeri.co](http://dockeri.co/image/painless/tox)](https://hub.docker.com/r/painless/tox/)

[![MIT License](https://img.shields.io/github/license/painless-software/docker-tox.svg)](https://github.com/painless-software/docker-tox/blob/master/LICENSE
) [![GitHub issues](https://img.shields.io/github/issues-raw/painless-software/docker-tox.svg)](https://github.com/painless-software/docker-tox/issues
) [![GitHub PRs](https://img.shields.io/github/issues-pr-raw/painless-software/docker-tox.svg)](https://github.com/painless-software/docker-tox/pulls)

Alternative Docker base image for Python testing with [tox](https://tox.readthedocs.io/en/latest/). If you need Git.

Python Test Automation
----------------------

Derives from [`themattrix/tox`](https://hub.docker.com/r/themattrix/tox/), which you should use if you don't need Git.

- [Usage](https://github.com/themattrix/docker-tox#usage) (README of the parent image)
- [Contribute](https://github.com/painless-software/docker-tox/) (GitHub repository)

Supported Tags
--------------

- [![latest](
  https://img.shields.io/badge/-latest-blue.svg?colorA=22313f&colorB=4a637b&logo=docker)](
  https://github.com/painless-software/docker-tox/blob/master/Dockerfile#L7-L8) [![image layers](
  https://img.shields.io/microbadger/layers/painless/tox/latest.svg)](
  https://microbadger.com/images/painless/tox) [![image size](
  https://img.shields.io/microbadger/image-size/painless/tox/latest.svg)](
  https://microbadger.com/images/painless/tox) (base image with tox and Git)
- [![multi](
  https://img.shields.io/badge/-multi-blue.svg?colorA=22313f&colorB=4a637b&logo=docker)](
  https://github.com/painless-software/docker-tox/blob/master/multi/Dockerfile#L15-L17) [![image layers](
  https://img.shields.io/microbadger/layers/painless/tox/multi.svg)](
  https://microbadger.com/images/painless/tox) [![image size](
  https://img.shields.io/microbadger/image-size/painless/tox/multi.svg)](
  https://microbadger.com/images/painless/tox) (provides additional software for running tests against multiple technologies, such as PHP Composer and [mysql_config](
  https://stackoverflow.com/questions/5178292/pip-install-mysql-python-fails-with-environmenterror-mysql-config-not-found))

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
