FROM alpine:latest@sha256:ff6bdca1701f3a8a67e328815ff2346b0e4067d32ec36b7992c1fdc001dc8517

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
