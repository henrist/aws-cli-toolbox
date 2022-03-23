FROM alpine:latest@sha256:6af1b11bbb17f4c311e269db6530e4da2738262af5fd9064ccdf109b765860fb

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
