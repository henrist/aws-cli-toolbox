FROM alpine:latest@sha256:00abeca57ca04b7672955453580fd51ab9ad1b4c5571b1e7643becaadb81b749

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
