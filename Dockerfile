FROM alpine:latest@sha256:ac03b2a7eecaa3b1871d4c3971bf93dbd37ab9d69a4031b25eae3c8a9783f58a

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
