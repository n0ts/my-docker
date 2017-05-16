FROM docker:stable-dind

MAINTAINER Naoya Nakazawa <naoya.n@gmail.com>

ENV user docker
ENV group docker
ENV work /work

RUN set -x \
    && apk --no-cache upgrade \

    && apk --no-cache add \
           bash bash-completion \
           ca-certificates \
           git sudo \
           tree unzip vim wget \

    # add local user
    && addgroup ${user} \
    && adduser ${user} -G ${group} -s /bin/bash -D \
    && echo "%${group} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/00-${group} \
    && chmod 400 /etc/sudoers.d/00-${group} \

    && chown root:${group} /var/run/docker.sock \

    # create work directory
    && mkdir ${work} \
    && chown -R ${user}:${group} ${work}

CMD ["/bin/bash"]
