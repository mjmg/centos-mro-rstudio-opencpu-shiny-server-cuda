#!/bin/sh


#echo "Installing curl from CRAN/MRAN"
#Rscript -e "install.packages('curl')"
#echo "Installing httr from CRAN/MRAN"
#Rscript -e "install.packages('httr')"
echo "Installing testthat from CRAN/MRAN"
Rscript -e "install.packages('testthat', repos='https://cloud.r-project.org/')"

echo "Installing assertive from CRAN/MRAN"
Rscript -e "install.packages('assertive', repos='https://cloud.r-project.org/')"
echo "Installing RcppEigen from CRAN/MRAN"
Rscript -e "install.packages('RcppEigen', repos='https://cloud.r-project.org/')"


# This installs R packages from github
#echo "Installing eddelbuettel/bh from github"
#Rscript -e "library(devtools); install_github('eddelbuettel/bh')"

echo "Installing njm18/gmatrix from github"
#Rscript -e "library(devtools); install_github('njm18/gmatrix', INSTALL_opts='--no-test-load')"
git clone https://github.com/njm18/gmatrix.git
rm ./gmatrix/.git -rf
MAKE="make -j7" #note this make the compile process use 7 threads
R CMD build gmatrix
R CMD INSTALL gmatrix_0.3.tar.gz --no-test-load


echo "Installing cdeterman/RViennaCL from github"
Rscript -e "library(devtools); install_github('cdeterman/RViennaCL')"
echo "Installing cdeterman/gpuR from github"
#Rscript -e "library(devtools); install_github('cdeterman/gpuR', INSTALL_opts='--no-test-load')"
git clone https://github.com/cdeterman/gpuR.git
rm ./gpuR/.git -rf
MAKE="make -j7" #note this make the compile process use 7 threads
R CMD INSTALL gpuR --no-test-load


# This installs R packages in CRAN/MRAN
#echo "Installing gmatrix from CRAN/MRAN"
#Rscript -e "install.packages('gmatrix', configure.args ='--with-cuda-home=$CUDA_HOME', INSTALL_opts='--no-test-load')"
#Rscript -e "install.packages('gmatrix')"

#echo "Installing gcbd from CRAN"
#Rscript -e "install.packages('gcbd')"

echo "Installing cudaBayesreg from CRAN/MRAN"
Rscript -e "install.packages('cudaBayesreg', repos='https://cloud.r-project.org/')"
echo "Installing permGPU from CRAN/MRAN"
Rscript -e "install.packages('permGPU', repos='https://cloud.r-project.org/')"
echo "Installing snowfall from CRAN/MRAN"
Rscript -e "install.packages('snowfall', repos='https://cloud.r-project.org/')"
echo "Installing data.table from CRAN/MRAN"
Rscript -e "install.packages('data.table', repos='https://cloud.r-project.org/')"
echo "Installing bit64 from CRAN/MRAN"
Rscript -e "install.packages('bit64', repos='https://cloud.r-project.org/')"

#echo "Installing gputools from source"
#Rscript -e "library(devtools); install_local('/tmp/gputools_1.1.tar.gz', 'gputools')"

echo "Installing gputools from CRAN/MRAN"
Rscript -e "install.packages('gputools', repos='https://cloud.r-project.org/')"


echo "Installing bigWig from github"
Rscript -e "library(devtools); install_github('mjmg/bigWig')"
echo "Installing dREG from source"
Rscript -e "library(devtools); install_github('mjmg/dREG')"
echo "Installing Rgtsvm from source"
Rscript -e "library(devtools); install_github('mjmg/Rgtsvm', args='--configure-args=--with-boost-home=/usr/lib64/microsoft-r/3.3/lib64/R/library/BH')"

