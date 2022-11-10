FROM alpine:latest@sha256:65a2763f593ae85fab3b5406dc9e80f744ec5b449f269b699b5efd37a07ad32e

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
