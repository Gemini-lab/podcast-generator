FROM ubuntu:20.04  # or any other base image you prefer


# Install Python 3.10 and pip

RUN apt-get update && apt-get install -y \
    software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y \
    python3.10 \
    python3.10-distutils \
    python3-pip \
    git && \
    python3.10 -m pip install --upgrade pip

# Install PyYAML using python3.10

RUN python3.10 -m pip install PyYAML
RUN python3.10 --version && pip3 --version


COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]