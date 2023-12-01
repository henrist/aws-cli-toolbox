FROM alpine:latest@sha256:34871e7290500828b39e22294660bee86d966bc0017544e848dd9a255cdf59e0

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
