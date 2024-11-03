FROM ubuntu:latest

RUN apt-get install python3.10 
RUN apt-get install python3-pip
RUN git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]