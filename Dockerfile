FROM       alpine:3.6
LABEL      sslyze.version=1.1.5
LABEL      python.version=2.7.13

MAINTAINER Andre Burgaud

RUN apk add --no-cache py-pip python openssl
RUN apk --no-cache add --virtual build-dependencies \
      python-dev \
      gcc \
      musl-dev \
      libffi-dev \
      openssl-dev && \
    pip install sslyze==1.1.5 && \
    apk del build-dependencies

CMD "sh"
