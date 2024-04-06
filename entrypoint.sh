#!/bin/bash

./wait-for-it.sh mysql-container:3306 --timeout=60
./wait-for-it.sh redis-container:6379 --timeout=60

java -jar app.jar

