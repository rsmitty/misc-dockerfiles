# nzbget

A Docker file to create a vanilla installation of NZBGet inside a container.

**Installation:**

- Git clone this directory.

- Ensure that you have docker and docker-machine installed and configured.

**Running:**

- Build the docker container with your own tag like:
`docker build -t rsmitty/nzbget .`

- Run it with:
`docker run -d -p 6789:6789 -v /Users/spencer/Movies/.nzbconfigs/nzbget-backup.conf:/app/nzbget.conf -v /Users/spencer/Movies:/app/downloads/completed nzbget`
Note the mapping of a backed up config file to overwrite a nzbget.conf

- Hit it in your browser by going to $IPADDRESS:6789

- Default user/pass is nzbget/tegbzn6789.
