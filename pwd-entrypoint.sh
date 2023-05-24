#!/bin/sh

export PWD_CONTAINER_ID=$(hostname)

docker container inspect "${PWD_CONTAINER_ID}" | jq -r '.[].Mounts[] | select(.Destination=="/pwd") | .Source'
