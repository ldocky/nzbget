FROM ubuntu:focal
MAINTAINER ldocky

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget
RUN wget https://nzbget.net/download/nzbget-latest-bin-linux.run
RUN sh nzbget-latest-bin-linux.run

RUN apt-get autoremove -y && \ 
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* nzbget-latest-bin-linux.run
    
EXPOSE 6789
VOLUME /config


CMD tail -f /dev/null
