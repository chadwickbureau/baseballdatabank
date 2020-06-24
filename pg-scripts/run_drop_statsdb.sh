#!/usr/bin/env sh
cd /opt/bbdata;

echo "dropping stats db";
psql -U postgres -q -f drop_stats_db.sql 2>/dev/null;
