#!/bin/bash

docker run -it --name deb-test-01 -v ./shared:/data debian 
# Sintassi alternativa ma più complessa
docker run -it --name deb-test-05 --mount type=bind,src=./shared,dst=/data debian


docker run -it --name deb-test-02 -v ./shared:/uploads debian 

docker run -it --name deb-test-03 -v ./shared:/shared/prova -v ./test:/shared/test debian 

docker run -it --name deb-test-04 -v ./conf/settings.ini:/setups/mysql.ini  debian 


