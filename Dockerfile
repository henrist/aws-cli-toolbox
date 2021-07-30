FROM alpine:latest@sha256:adab3844f497ab9171f070d4cae4114b5aec565ac772e2f2579405b78be67c96

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
