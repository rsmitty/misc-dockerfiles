FROM ubuntu:14.04
MAINTAINER Spencer Smith <robertspencersmith@gmail.com>

##Install BOINC
RUN apt-get update && apt-get install -y boinc-client
RUN /etc/init.d/boinc-client start

##Set  to /var/lib/boinc-client
WORKDIR /var/lib/boinc-client

##Run BOINC by default. Expects env vars for url and account key
CMD /etc/init.d/boinc-client start; sleep 5; /usr/bin/boinccmd --project_attach ${boincurl} ${boinckey}
