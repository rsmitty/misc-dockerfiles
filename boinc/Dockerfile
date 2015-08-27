FROM ubuntu:14.04
MAINTAINER Spencer Smith <robertspencersmith@gmail.com>

##Set workdir
WORKDIR /app

##Install BOINC
RUN apt-get update && apt-get install -y boinc-client

##Run BOINC by default. Expects env vars for url and account key
CMD /usr/bin/boinc --attach_project ${boincurl} ${boinckey}
