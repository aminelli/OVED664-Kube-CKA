#!/bin/bash


docker run --rm \
    -v vol-test-001:/data \
    -v $(pwd)/backup:/temp \
    alpine \
    tar czf /temp/backup-$(date +%Y%m%d%H%M%S).tar.gz -C /data .
