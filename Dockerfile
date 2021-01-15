FROM alpine:latest@sha256:d0710affa17fad5f466a70159cc458227bd25d4afb39514ef662ead3e6c99515

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
