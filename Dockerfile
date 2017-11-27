FROM python:3-slim-stretch

ENV SSLYZE_VERSION 1.2.0

LABEL python.version=3.6.3 \
      sslyze.version=$SSLYZE_VERSION \
      maintainer="andre.burgaud@gmail.com"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y gcc && \
    apt-get install -y libssl-dev && \
    apt-get install -y libffi-dev && \
    pip install sslyze==$SSLYZE_VERSION && \
    apt-get remove -y gcc libssl-dev libffi-dev && \
    apt-get autoremove -y && apt-get clean

CMD "bash"
