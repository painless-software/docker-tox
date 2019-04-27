FROM themattrix/tox-base

LABEL maintainer="Peter Bittner <peter@painless.software>"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        git \
        libmysqlclient-dev \
        libpq-dev \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
