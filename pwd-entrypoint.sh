#!/bin/sh

export PWD_CONTAINER_ID=$(basename $(cat /proc/1/cpuset))

#if [[ ! -f pwd.yml ]]; then
#  cp /opt/pwd.yml pwd.yml
#  chmod 777 pwd.yml
#fi

docker container inspect ${PWD_CONTAINER_ID} | jq -r '.[].Mounts[] | select(.Destination=="/pwd") | .Source'
#chmod 777 pwd.var
