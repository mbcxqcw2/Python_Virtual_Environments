#!/bin/bash

#Notes: This script creates a virtual environment suitable
#for periodicity-searching FRB 121102 data using various
#algorithms from the literature. It was created on the MPCDF
#Raven machine.
#
#To initially set up the virtual environment, navigate to the
#directory containing this script and run:
#
#> bash install_arecibo_env.sh
#> source /arecibo-env/bin/activate
#> pip install ipython --force-reinstall
#> pip install notebook --force-reinstall
#
#Then the virtual environment can be used any time by simply running:
#
#> source [loc]/arecibo-env/bin/activate
#where [loc] is the directory which contained this script.
#
#Created by C. Walker on 26/07/2022

# clean modules
module purge
module load anaconda/3/2021.11

# create venv and activate
python -m venv --system-site-packages arecibo-env
module unload anaconda
source arecibo-env/bin/activate

# install stuff

#riptide (requirement for frbpa)
pip install -e riptide-ffa/

#PJ4 (requirement for frbpa)
pip install -e  P4J

#frbpa (for period searching like Rajwade+20)
pip install -e git+https://github.com/KshitijAggarwal/frbpa.git

#force reinstall jupyter, ipython so it contains necessary packages
pip install ipython --force-reinstall
pip install notebook --force-reinstall

# test
python -c "from frbpa.search import riptide_search, p4j_search"




