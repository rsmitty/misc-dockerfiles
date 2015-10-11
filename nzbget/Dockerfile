FROM python:2.7
MAINTAINER Spencer Smith <robertspencersmith@gmail.com>

WORKDIR /app

RUN apt-get update && \
apt-get install -y wget unzip&& \
wget https://github.com/nzbget/nzbget/releases/download/v16.0/nzbget-16.0-bin-linux.run && \
sh /app/nzbget-16.0-bin-linux.run --destdir /app && \
wget https://github.com/nzbget/VideoSort/releases/download/v6.1/videosort-6.1-dist.zip && \
unzip videosort-6.1-dist.zip && \
mv videosort/VideoSort.py scripts && \
mv videosort/lib scripts && \
rm -rf videosort*


EXPOSE 6789
CMD /app/nzbget -s -o outputmode=log
