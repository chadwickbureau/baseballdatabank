#!/usr/bin/env sh
cd /opt/bbdata;

echo "creating stats db";
psql -U postgres -q -f create_stats_db.sql 2>/dev/null;

echo "loading stats db";
psql -U postgres -q -f load_stats_db.sql 2>/dev/null;