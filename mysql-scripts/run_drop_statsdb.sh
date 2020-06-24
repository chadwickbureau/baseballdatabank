#!/usr/bin/env sh
cd /opt/bbdata;

echo "dropping stats db";
mysql < drop_stats_db.sql;
