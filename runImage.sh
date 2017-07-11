#!/bin/sh


mkdir $HOME/Shared/shiny

# Run Image
NV_DOCKER='sudo docker -D' sudo nvidia-docker run -p 80:80 -p 443:443 --name centos-mro-rstudio-opencpu-shiny-server-cuda -v /home/mjg/Shared/shiny:/home/shiny:rw,z -ti mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda
#NV_DOCKER='sudo docker -D' sudo nvidia-docker run -p 80:80 -p 443:443 --name centos-mro-rstudio-opencpu-shiny-server-cuda -v /home/shiny:/home/mjg/Shared/shiny:rw,z -ti mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda
#NV_DOCKER='sudo docker -D' sudo nvidia-docker run -p 80:80 -p 443:443 --name centos-mro-rstudio-opencpu-shiny-server-cuda -ti mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda /bin/bash
