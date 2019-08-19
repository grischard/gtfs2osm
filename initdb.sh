#!/bin/bash

source ./config.sh

dropdb $dbname || exit 1
createdb -E UTF8 -T template0 --locale=fr_FR.UTF-8 $dbname
echo "CREATE EXTENSION postgis; create extension hstore" | psql -d $dbname