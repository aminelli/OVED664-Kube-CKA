#!/bin/bash

docker run -it --name deb-test-01 -v ./shared:/data debian 

docker run -it --name deb-test-02 -v ./shared:/uploads debian 

docker run -it --name deb-test-03 -v ./shared:/shared/prova -v ./test:/shared/test debian 