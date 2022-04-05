FROM alpine:latest@sha256:4edbd2beb5f78b1014028f4fbb99f3237d9561100b6881aabbf5acce2c4f9454

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
