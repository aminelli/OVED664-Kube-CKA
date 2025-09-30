#!/bin/bash

docker build -t poste-webapp .


docker run -p 8089:8080 poste-webapp-01

