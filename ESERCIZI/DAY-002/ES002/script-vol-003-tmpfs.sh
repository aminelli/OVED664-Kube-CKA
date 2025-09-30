#!/bin/bash


docker run -it --name deb-001 --tmpfs /data debian
docker run -it --name deb-002 --mount type=tmpfs,dst:/data debian

docker run -it --name deb-003 --tmpfs /data:noexec,size=1024,mode=1777,uid=1000 debian


