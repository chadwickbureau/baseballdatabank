### Chadwick Baseball Databank

Forked from https://github.com/chadwickbureau/baseballdatabank, adding on some automation to spin up and load databases (mysql or postgres) with the data from the Chadwick CSV files.

For the README associated with the parent repo go [here](CHADWICK_README.txt)

This work is licensed under a Creative Commons Attribution-ShareAlike
3.0 Unported License.  For details see:
http://creativecommons.org/licenses/by-sa/3.0/

## How to Use

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop) if you haven't already.
   
2. Pick either MySQL or postgres. YMMV, but on my MBP the postgres image is smaller and loads faster.  Both work.

3. Change into the appropriate directory and initialize the db. E.g. for postgres, after ensuring that 
   ```
   cd pg-scripts
   sh init_pg_statsdb.sh
   ```
   This will get you a running docker container from an image you can stop and start if you like, using the `start_db.sh` and `stop_db.sh` scripts in the same directory as the "init" command you picked.  

   You don't have to worry about the *.sql files or the run_*.sh files, as those are built into the image as some glue code to enable loading or tearing down the db

4.  Start using the dbs!  If you are familiar with databases and SQL, you can connect directly to the running images and submit queries. E.g.
    ```
    docker exec -it bb-stats /bin/bash -c "psql -U postgres stats"

    # OR for mysql

    docker exec -it bb-stats /bin/bash -c "mysql stats" 
    ```
    If you want to connect to them via python or some other means, the ports are at the default setting unless you yourself modify them:  3306 for MySQL, 5432 for postgres