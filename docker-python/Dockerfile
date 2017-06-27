FROM n0ts/docker

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
    && apk add --no-cache py-pip python-dev autoconf automake libtool \
    && pip install --upgrade pip \
    && pip install jq \
    && python --version \
    && pip --version

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []
