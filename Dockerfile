FROM python:3.6.4-slim-stretch

ENV SSLYZE_VERSION=1.4.0

LABEL python.version=$PYTHON_VERSION \
      sslyze.version=$SSLYZE_VERSION \
      maintainer="andre.burgaud@gmail.com"

RUN apt-get update && apt-get upgrade -y && \
    BUILD_DEPENDENCIES='gcc libssl-dev libffi-dev' && \
    apt-get install -yqq $BUILD_DEPENDENCIES && \
    pip install sslyze==$SSLYZE_VERSION && \
    apt-get purge --auto-remove -yqq $BUILD_DEPENDENCIES && \
    apt-get clean

CMD "bash"
