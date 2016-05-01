#! /bin/bash
set -e

if [ $(docker images | grep alpine | grep glibc | awk '{print $3}') ]; then
    docker rmi -f $(docker images | grep alpine | grep glibc | awk '{print $3}')
fi
docker build -t alpine:glibc .
