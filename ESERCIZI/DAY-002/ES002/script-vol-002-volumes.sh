#!/bin/bash

docker volume create vol-test-001

docker run -it --name deb-001 -v vol-test-001:/data debian
docker run -it --name deb-002 --mount type=volume,src=vol-test-001,dst=/data debian

docker run -it --name deb-003 -v vol-test-001:/test debian
