#!/bin/bash

# This script is used to start and stop the test environment.
if [ "$1" = "up" ]; then
    docker-compose up -d
elif [ "$1" = "down" ]; then
    docker-compose down
elif [ "$1" = "purge" ]; then
    docker-compose down -v && sudo rm -rf ./data
else
    echo "Usage: test.sh [up|down|purge]"
fi
