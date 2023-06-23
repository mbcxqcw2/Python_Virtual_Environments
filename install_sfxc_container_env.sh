#!/bin/bash

#Notes: This script creates a virtual environment suitable
#for using the SFXC container by Sebastian Kehl on the MPCDF raven machine.
#
##To initially set up the virtual environment, navigate to the
#directory containing this script and run:
#
#> bash install_sfxc_container_env.sh
#> source /sfxc_cont-env/bin/activate
#> pip install ipython --force-reinstall
#> pip install notebook --force-reinstall
#
#Then the virtual environment can be used any time by simply running:
#
#> source [loc]/sfxc_cont-env/bin/activate
#where [loc] is the directory which contained this script.
#
#Created by C. Walker on 23/06/2023

#######
#BEGIN#
#######

# Clean modules which already exist
module purge
module load anaconda/3/2021.11
module load charliecloud/0.30 

# Create new virtual environment and activate
python -m venv --system-site-packages sfxc_cont-env
module unload anaconda
source sfxc_cont-env/bin/activate

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




