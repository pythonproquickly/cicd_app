#!/bin/sh
export DOCKER_DEFAULT_PLATFORM=linux/arm64
# Stop previous dockers
docker-compose stop
docker-compose down

# Run dockers as daemon
docker-compose up -d --build

# Remove caches
# yes | docker container prune
# yes | docker network prune
# yes | docker image prune

echo
echo
echo run me at http://localhost:4200/angular-app
echo
