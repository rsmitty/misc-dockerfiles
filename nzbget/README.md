# nzbget

A Docker file to create a vanilla installation of NZBGet inside a container.

**Installation:**

- Git clone this directory.

- Ensure that you have docker and docker-machine installed and configured.

**Running:**

- Build the docker container with your own tag like:
`docker build -t rsmitty/nzbget .`

- Run it with:
`docker run -p 6789:6789 --detach=true rsmitty/nzbget`

- Hit it in your browser by going to $IPADDRESS:6789

- Default user/pass is nzbget/tegbzn6789.
