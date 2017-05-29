FROM docker:stable-dind

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user docker
ENV group docker
ENV work /work

# https://github.com/docker-library/docker/blob/master/17.05/dind/dockerd-entrypoint.sh
COPY dockerd-entrypoint.sh /usr/local/bin/

RUN set -x \
    && apk --no-cache upgrade \

    && apk --no-cache add \
           alpine-sdk \
           bash bash-completion \
           ca-certificates curl \
           git sudo \
           tree unzip vim wget \

    # add local user
    && addgroup ${user} \
    && adduser ${user} -G ${group} -s /bin/bash -D \
    && echo "%${group} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/00-${group} \
    && chmod 400 /etc/sudoers.d/00-${group} \

    # create work directory
    && mkdir ${work} \
    && chown -R ${user}:${group} ${work}

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []
