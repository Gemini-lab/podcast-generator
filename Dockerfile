FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.12 \
  python3-pip \
  git

RUN python3.12 -m pip install --upgrade pip
RUN python3.12 -m pip install --no-cache-dir PyYAML

# RUN pip3 install PyYAML
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]