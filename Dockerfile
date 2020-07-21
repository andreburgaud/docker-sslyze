FROM python:3.8.5-slim-buster

ARG SSLYZE_VERSION=3.0.8
ENV SSLYZE_VERSION=$SSLYZE_VERSION

LABEL python.version=$PYTHON_VERSION \
      sslyze.version=$SSLYZE_VERSION \
      maintainer="andre.burgaud@gmail.com"

RUN pip install sslyze==$SSLYZE_VERSION

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT  ["/entrypoint.sh"]
