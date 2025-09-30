#!/bin/bash


docker volume create vol-test-001


docker run -it --name deb-001 -v vol-test-001:/data debian

