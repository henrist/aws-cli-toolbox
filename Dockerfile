FROM alpine:latest@sha256:01ef845ae2bc3af2405c1c9763f0e969ee7106d2cce624abfcc75d4640f57f08

COPY requirements.txt /requirements.txt

RUN set -eux; \
    apk --no-cache add \
      bash \
      coreutils \
      git \
      jq \
      py3-pip \
      python3 \
      groff \
    ; \
    pip3 install -r /requirements.txt
