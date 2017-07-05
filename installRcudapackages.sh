#!/bin/sh

echo "Installing testthat from MRAN"
Rscript -e "install.packages('testthat')"
echo "Installing assertive from MRAN"
Rscript -e "install.packages('assertive')"
echo "Installing RcppEigen from MRAN"
Rscript -e "install.packages('RcppEigen')"


echo "Installing njm18/gmatrix from github"
#Rscript -e "library(devtools); install_github('njm18/gmatrix')"
#Rscript -e "library(devtools); install_github('njm18/gmatrix', INSTALL_opts='--no-test-load')"
git clone https://github.com/njm18/gmatrix.git
rm ./gmatrix/.git -rf
R CMD build gmatrix
R CMD INSTALL gmatrix_0.3.tar.gz --no-test-load


echo "Installing cdeterman/RViennaCL from github"
Rscript -e "library(devtools); install_github('cdeterman/RViennaCL')"

echo "Installing cdeterman/gpuR from github"
#Rscript -e "library(devtools); install_github('cdeterman/gpuR')"
#Rscript -e "library(devtools); install_github('cdeterman/gpuR', INSTALL_opts='--no-test-load')"
git clone https://github.com/cdeterman/gpuR.git
rm ./gpuR/.git -rf
#MAKE="make -j7" #note this make the compile process use 7 threads
R CMD INSTALL gpuR --no-test-load


echo "Installing bit64 from MRAN"
Rscript -e "install.packages('bit64')"


echo "Installing gputools from MRAN"
Rscript -e "install.packages('gputools')"


echo "Installing Rgtsvm from github"
Rscript -e "library(devtools); install_github('Danko-Lab/Rgtsvm', subdir ='Rgtsvm', args='--configure-args=--with-boost-home=/usr/lib64/microsoft-r/3.4/lib64/R/library/BH --with-cuda-home=$CUDA_HOME')"


#echo "Installing gcbd from CRAN"
#Rscript -e "install.packages('gcbd')"
#echo "Installing cudaBayesreg from MRAN"
#Rscript -e "install.packages('cudaBayesreg')"
#echo "Installing permGPU from MRAN"
#Rscript -e "install.packages('permGPU')"


