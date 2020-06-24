#!/usr/bin/env sh
DB_ROOT_PASSWD="changeme"
function check_mysql() {
    MY_STATUS=$(docker exec -it bb-stats /bin/bash -c "mysqladmin -u root ping 2>/dev/null")
    echo ${MY_STATUS}
}

docker build -f Mysql-Dockerfile -t bb-stats .
docker run -it --rm --name bb-stats -v $(pwd)/../core:/opt/core -p3306:3306 -e MYSQL_ROOT_PASSWORD=${DB_ROOT_PASSWD} -d bb-stats

check_mysql
until [[ "${MY_STATUS}" == *"alive"* ]]
do
    echo "waiting for db to be ready"
    sleep 2
    check_mysql
done

docker exec -it bb-stats /bin/bash "run_data_load.sh"

