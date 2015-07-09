FROM ubuntu:14.04
MAINTAINER Spencer Smith <robertspencersmith@gmail.com>

ENV APPDIR /app
WORKDIR $APPDIR

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/nzbget/nzbget/releases/download/v15.0/nzbget-15.0-bin-linux.run
RUN sh /app/nzbget-15.0-bin-linux.run --destdir /app
EXPOSE 6789
CMD /app/nzbget -s -o outputmode=log

