FROM alpine:latest@sha256:8914eb54f968791faf6a8638949e480fef81e697984fba772b3976835194c6d4

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
