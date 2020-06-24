#!/usr/bin/env sh
cd /opt/bbdata;

echo "creating stats db";
mysql < create_stats_db.sql;

echo "loading stats data";
mysql < load_stats_db.sql;
