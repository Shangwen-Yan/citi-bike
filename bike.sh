#! /bin/bash

wget http://witestlab.poly.edu/bikes/201601-citibike-tripdata.zip

unzip 201601-citibike-tripdata.zip

awk -F "\"*,\"*" '{print $5}' 201601-citibike-tripdata.csv 201601-citibike-tripdata.csv > all-station.csv

awk -F "\"*,\"*" '{print $9}' 201601-citibike-tripdata.csv 201601-citibike-tripdata.csv >> all-station.csv

cat all-station.csv | sort | uniq -c | sort -nr > final-result.csv
