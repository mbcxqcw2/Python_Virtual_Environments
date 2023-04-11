#!/bin/bash

#Notes: This script creates a virtual environment suitable
#for analysing LOFT-e data. It was created on the mpcdf
#raven machine, but will be used on the mpifr miraculix
#machine (and hopefully others). This will be achieved by
#activating the environment on raven, and exporting the
#environment to a singularity container following:
# https://csc-training.github.io/csc-env-eff/hands-on/singularity/singularity_extra_replicating-conda.html
#
##To initially set up the virtual environment, navigate to the
#directory containing this script and run:
#
#> bash install_LOFTe_env.sh
#> source /LOFTe-env/bin/activate
#> pip install ipython --force-reinstall
#> pip install notebook --force-reinstall
#
#Then the virtual environment can be used any time by simply running:
#
#> source [loc]/LOFTe-env/bin/activate
#where [loc] is the directory which contained this script.
#
#Created by C. Walker on 16/11/2022

#######
#BEGIN#
#######

# Clean modules which already exist
module purge
module load anaconda/3/2021.11

# Create new virtual environment and activate
python -m venv --system-site-packages LOFTe-env
module unload anaconda
source LOFTe-env/bin/activate

#Update pip after activation
pip install --upgrade pip

##########################
#nstall required packages#
##########################

#baseband by Marten van Kerkwijk
git clone https://github.com/mhvk/baseband
pip install -e baseband/

#force reinstall jupyter, ipython so it contains necessary packages
pip install ipython --force-reinstall
pip install notebook --force-reinstall

# test
python -c "from baseband import vdif"




