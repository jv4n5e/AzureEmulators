#!/bin/bash

export HOST_IP="`ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | head -n 1`"

docker rm -f cosmosdb
docker-compose down
docker-compose up -d
