#!/usr/bin/env sh

docker exec -it bb-stats /bin/bash -c "mysqladmin -u root shutdown"
docker rmi -f bb-stats
docker container prune -f
