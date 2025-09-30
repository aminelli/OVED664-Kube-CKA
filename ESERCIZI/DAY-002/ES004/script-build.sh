#!/bin/bash

docker build -t poste-webapp .


docker run -d -p 8089:8080 poste-webapp

