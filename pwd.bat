@echo off

set DOCKER=//usr/bin/docker:/usr/bin/docker
set DOCKER_SOCK=//var/run/docker.sock:/var/run/docker.sock

docker run --rm -v "%CD%:/pwd" -v "%DOCKER%" -v "%DOCKER_SOCK%" javanile/pwd
