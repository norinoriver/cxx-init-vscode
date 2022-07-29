FROM debian:buster

RUN apt upgrade && apt update
WORKDIR /usr/local/src
COPY ./install-list.txt ./
RUN echo `cat install-list.txt` | xargs apt install -y