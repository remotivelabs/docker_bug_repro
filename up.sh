#!/bin/bash
set -e

echo "Creating networks"
docker network create my_net
docker network create --driver=docker_can --opt vxcan.dev=mycan0 --opt vxcan.peer=mycan0 --ipv6=false my_can

echo "Starting alpine"
docker run -d --name alpine --network my_net --network my_can --tty --init --stop-timeout 5 alpine sleep infinity
