#!/bin/bash
set -e

echo "Creating networks"
docker network create my_net
docker network create --ipv6=false --ipv4=false --driver=docker_can --opt vxcan.dev=mycan0 --opt vxcan.peer=mycan0 my_can

echo "Starting alpine"
docker run --name alpine --network my_net --network my_can --tty alpine echo "hello"
