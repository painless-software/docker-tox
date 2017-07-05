FROM themattrix/tox-base

LABEL maintainer "Peter Bittner <peter@painless.software>"

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        git \
        ca-certificates \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        php7.0-cli \
        php7.0-mbstring \
        composer \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        libmysqlclient-dev \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
