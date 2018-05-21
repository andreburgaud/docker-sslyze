FROM python:3.6.5-slim-stretch

ARG SSLYZE_VERSION=1.4.2
ENV SSLYZE_VERSION=$SSLYZE_VERSION

LABEL python.version=$PYTHON_VERSION \
      sslyze.version=$SSLYZE_VERSION \
      maintainer="andre.burgaud@gmail.com"

RUN apt-get update && apt-get upgrade -y && \
    BUILD_DEPENDENCIES='gcc libssl-dev libffi-dev' && \
    apt-get install -yqq $BUILD_DEPENDENCIES && \
    pip install sslyze==$SSLYZE_VERSION && \
    apt-get purge --auto-remove -yqq $BUILD_DEPENDENCIES && \
    apt-get clean

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT  ["/entrypoint.sh"]
