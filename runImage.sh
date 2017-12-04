#!/bin/sh


mkdir $HOME/Shared/shiny

# Run Image for nvidia-docker2
sudo nvidia-docker run -p 80:80 -p 443:443 --name centos-mro-rstudio-opencpu-shiny-server-cuda -v $HOME/Shared/shiny:/home/shiny:rw,z -ti mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda

# Interactive Run Image for nvidia-docker 1
#NV_DOCKER='sudo docker -D' sudo nvidia-docker run -p 80:80 -p 443:443 --name centos-mro-rstudio-opencpu-shiny-server-cuda -ti mjmg/centos-mro-rstudio-opencpu-shiny-server-cuda /bin/bash
