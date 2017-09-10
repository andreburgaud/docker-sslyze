FROM       alpine:3.6
LABEL      sslyze.version=1.1.4
LABEL      python.version=2.7.13

MAINTAINER Andre Burgaud

RUN apk add --no-cache \
  python \
  python-dev \
  py-pip \
  gcc \
  musl-dev \
  libffi-dev \
  openssl-dev

RUN pip install sslyze

CMD "sh"
