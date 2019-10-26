FROM alpine:latest@sha256:e4355b66995c96b4b468159fc5c7e3540fcef961189ca13fee877798649f531a

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
