#!/usr/bin/env sh

docker exec -it bb-stats /bin/bash -c "mysqladmin -u root shutdown"
