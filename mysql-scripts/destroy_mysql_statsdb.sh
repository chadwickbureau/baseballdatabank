#!/usr/bin/env sh

docker exec -it bb-stats /bin/bash -c "mysqladmin -u root shutdown"
docker container rm bb-stats
docker rmi -f bb-stats