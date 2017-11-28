FROM python:3-slim-stretch

ENV SSLYZE_VERSION 1.2.0

LABEL python.version=3.6.3 \
      sslyze.version=$SSLYZE_VERSION \
      maintainer="andre.burgaud@gmail.com"

RUN apt-get update && apt-get upgrade -y && \
    BUILD_DEPENDENCIES='gcc libssl-dev libffi-dev' && \
    apt-get install -yqq $BUILD_DEPENDENCIES && \
    pip install sslyze==$SSLYZE_VERSION && \
    apt-get purge --auto-remove -yqq $BUILD_DEPENDENCIES && \
    apt-get clean

CMD "bash"
