FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y lsb-release wget apt-transport-https libqt5x11extras5 && \
    echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list && \
    wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public |  apt-key add - && \
    apt-get update && \
    apt-get install -y hipchat4 && \
    rm -rf /var/lib/apt/lists/*

CMD hipchat4
