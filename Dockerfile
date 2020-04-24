FROM alpine:latest@sha256:39eda93d15866957feaee28f8fc5adb545276a64147445c64992ef69804dbf01

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
