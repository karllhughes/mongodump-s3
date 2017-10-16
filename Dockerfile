FROM alpine:edge@sha256:2b796ae57cb164a11ce4dcc9e62a9ad10b64b38c4cc9748e456b5c11a19dc0f3

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache mongodb-tools py2-pip && \
  pip install pymongo awscli && \
  mkdir /backup

ENV S3_PATH=mongodb
ENV AWS_DEFAULT_REGION=us-east-1

ADD entrypoint.sh /usr/local/bin/entrypoint
ADD backup.sh /usr/local/bin/backup
ADD mongouri.py /usr/local/bin/mongouri

VOLUME /backup

CMD /usr/local/bin/entrypoint
