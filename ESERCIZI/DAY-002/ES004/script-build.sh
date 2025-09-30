#!/bin/bash

docker build -t poste-webapp .

docker run -d --name web-app-01 -p 8089:8080 poste-webapp

