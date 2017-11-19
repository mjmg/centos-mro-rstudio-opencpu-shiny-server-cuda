#!/bin/sh

#NV_DOCKER='sudo docker -D' sudo nvidia-docker build -t mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda .

sudo nvidia-docker build -t mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda .

# Run Image
#NV_DOCKER='sudo docker -D' sudo nvidia-docker run -p 80:80 -p 443:443 --name centos-mro-rstudio-opencpu-shiny-server-cuda -ti mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda /bin/bash

#sudo docker -t `curl -s http://localhost:3476/docker/cli` build mjmg/centos-opencpu-server-cuda .

#sudo docker build -t  `curl -s http://localhost:3476/docker/cli` mjmg/centos-opencpu-server-cuda .
