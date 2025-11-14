#!/bin/bash
set -e

# Cleanup
docker stop alpine || true
docker rm alpine  || true
docker network rm my_net my_can  || true
