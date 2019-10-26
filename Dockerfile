FROM alpine:latest@sha256:c19173c5ada610a5989151111163d28a67368362762534d8a8121ce95cf2bd5a

COPY requirements.txt /requirements.txt

RUN set -eux; \
    apk --no-cache add \
      bash \
      git \
      jq \
      py3-pip \
      python3 \
      groff \
    ; \
    pip3 install -r /requirements.txt
