FROM n0ts/docker-python

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

RUN set -x \
    && pip install aws-cli aws-shell awsebcli \
    && aws --version

CMD ["/bin/bash"]
