#!/bin/bash

source ../config.sh

# rm $osm_dir/*
cd $osm_dir
date > download_timestamp.txt
wget -N $osm_url 
# ln -s *.pbf latest.osm.pbf


