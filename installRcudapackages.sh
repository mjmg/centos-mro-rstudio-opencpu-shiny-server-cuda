#!/bin/sh


echo "Installing eddelbuettel/bh from github"
Rscript -e "library(devtools); install_github('eddelbuettel/bh')"

echo "Installing assertive from MRAN"
Rscript -e "install.packages('assertive')"
echo "Installing RcppEigen from MRAN"
Rscript -e "install.packages('RcppEigen')"


echo "Installing njm18/gmatrix from github"
#Rscript -e "library(devtools); install_github('njm18/gmatrix')"
#Rscript -e "library(devtools); install_github('njm18/gmatrix', INSTALL_opts='--no-test-load')"
git clone https://github.com/njm18/gmatrix.git
rm ./gmatrix/.git -rf
#R CMD build gmatrix
#R CMD INSTALL gmatrix_0.3.tar.gz --no-test-load
R CMD INSTALL gmatrix --no-test-load --configure-args="--with-arch=sm_30"


echo "Installing cdeterman/RViennaCL from github"
Rscript -e "library(devtools); install_github('cdeterman/RViennaCL')"


echo "Installing cdeterman/gpuR from github"
#Rscript -e "library(devtools); install_github('cdeterman/gpuR')"
#Rscript -e "library(devtools); install_github('cdeterman/gpuR', INSTALL_opts='--no-test-load')"
git clone https://github.com/cdeterman/gpuR.git
rm ./gpuR/.git -rf
#MAKE="make -j7" #note this make the compile process use 7 threads
R CMD INSTALL gpuR --no-test-load


echo "Installing patched mjmg/gputools from github"
git clone https://github.com/mjmg/gputools.git
rm ./gputools/.git -rf
R CMD INSTALL gputools --no-test-load
#Rscript -e "install.packages('gputools')"


echo "Installing bit64 from MRAN"
Rscript -e "install.packages('bit64')"

dnf install -y mlocate
updateb
locate cublas.h

echo "Installing Rgtsvm from github"
BOOST_HOME="/opt/microsoft/ropen/$MRO_VERSION/lib64/R/library/BH"
git clone https://github.com/Danko-Lab/Rgtsvm.git
rm ./Rgtsvm/.git -rf
cd Rgtsvm
sed -i 's/sm_20/sm_30/g' /tmp/Rgtsvm/Rgtsvm/configure
sed -i 's/sm_20/sm_30/g' /tmp/Rgtsvm/Rgtsvm/configure.ac
R CMD INSTALL --configure-args="--with-cuda-home=$CUDA_HOME --with-boost-home=$BOOST_HOME" Rgtsvm --no-test-load
#Rscript -e "library(devtools); install_github('Danko-Lab/Rgtsvm', subdir ='Rgtsvm', args='--configure-args=--with-boost-home=$BOOST_HOME --with-cuda-home=$CUDA_HOME')"

#echo "Installing gcbd from CRAN"
#Rscript -e "install.packages('gcbd')"
#echo "Installing cudaBayesreg from MRAN"
#Rscript -e "install.packages('cudaBayesreg')"
#echo "Installing permGPU from MRAN"
#Rscript -e "install.packages('permGPU')"


