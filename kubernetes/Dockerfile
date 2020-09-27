FROM themattrix/tox-base

LABEL maintainer="Peter Bittner <peter@painless.software>"

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        ca-certificates \
        git \
        libmysqlclient-dev \
        libpq-dev \
        ssh \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN python3 -m pip install --upgrade pip \
 && python3 -m pip install kustomize-wrapper \
 && pyenv rehash \
 && kustomize version --update \
 && kustomize version | grep Kustomize | sed -e 's#^.*(##' -e 's#)$##' | xargs -I BIN mv -v BIN /usr/local/bin/ \
 && kustomize version | grep Kubeval | sed -e 's#^.*(##' -e 's#)$##' | xargs -I BIN mv -v BIN /usr/local/bin/
