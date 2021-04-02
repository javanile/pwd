#!/bin/sh

export PWD_CONTAINER_ID=$(basename $(cat /proc/1/cpuset))

docker container inspect ${PWD_CONTAINER_ID} | jq -r '.[].Mounts[] | select(.Destination=="/pwd") | .Source'
