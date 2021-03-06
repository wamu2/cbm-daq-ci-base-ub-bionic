FROM ubuntu:bionic

LABEL maintainer="w.f.j.mueller@gsi.de" \
      description="CBM DAQ CI/CD - Ubuntu Bionic (18.04 LTS) base"

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
          git cmake make \
          expect \
          wget curl \
          g++ \
          clang-10 clang-format-10 clang-tidy-10 \
          zlib1g-dev \
          libboost-dev \
          libboost-chrono-dev libboost-system-dev libboost-timer-dev \
          python3 python3-dev python3-setuptools python3-pip \
          python3-flake8 python3-coverage python3-lxml \
          python3-zmq python3-msgpack \
          mypy \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD bash
