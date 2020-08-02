FROM ubuntu:bionic

RUN apt-get update \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD bash
