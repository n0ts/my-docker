FROM n0ts/docker-python

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
    && pip install awscli aws-shell awsebcli \
    && aws --version

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []
