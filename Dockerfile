FROM ubuntu:focal
MAINTAINER ldocky

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget
RUN wget https://nzbget.net/download/nzbget-latest-bin-linux.run  && \

EXPOSE 6789
VOLUME /config

CMD ["nzbget", "-s"]
