#!/bin/bash

#Notes: This script creates a virtual environment containing
#the yt and trident packages for analysing cosmological
#hydrodynamic simulation data.
#
#This script was created on the MPCDF Draco machine and migrated
#to the MPCDF Raven machine when Draco was decomissioned.
#
#To initially set up the virtual environment, navigate to the
#directory containing this script and run:
#
#> bash install_yt.sh
#> source /yt-env/bin/activate
#> pip install ipython --force-reinstall
#> pip install notebook --force-reinstall
#
#Then the virtual environment can be used any time by simply running:
#
#> source [loc]/yt-env/bin/activate
#where [loc] is the directory which contained this script.

# clean modules
module purge
module load anaconda/3/2020.02

# create venv and activate
python -m venv --system-site-packages yt-env
module unload anaconda
source yt-env/bin/activate

# install stuff
git clone https://github.com/yt-project/yt yt-git
pip install -e yt-git/

git clone https://github.com/yt-project/yt_astro_analysis
pip install -e yt_astro_analysis/

git clone https://github.com/trident-project/trident
pip install -e trident/

# test
python -c "from yt.extensions.astro_analysis.cosmological_observation.api import CosmologySplice"

