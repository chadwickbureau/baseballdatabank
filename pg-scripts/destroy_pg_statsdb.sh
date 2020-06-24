#!/usr/bin/env sh

docker exec -it bb-stats /bin/bash -c "su postgres -c \"pg_ctl stop\""
docker rmi -f bb-stats
docker container prune -f
