#!/usr/bin/env sh
DB_PASSWD="changeme"
function check_pg() {
    MY_STATUS=$(docker exec -it bb-stats /bin/bash -c "su postgres -c pg_isready")
    echo $MY_STATUS
}

docker build -f Postgres-Dockerfile -t bb-stats .
docker run -it --name bb-stats -v $(pwd)/../core:/opt/core -p5432:5432 -e POSTGRES_PASSWORD=${DB_PASSWD} -d bb-stats

check_pg
until [[ "${MY_STATUS}" == *"accepting connections"* ]]
do
    echo "waiting for db to be ready"
    sleep 2
    check_pg
done

docker exec -it bb-stats /bin/bash "run_data_load.sh"
