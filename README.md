# NOTES:
Author: C. Walker
This github repository contains scripts for setting up python virtual environments
for cosmological simulation and FRB data analysis -related projects.
It was originally created on the MPCDF raven machine at /u/cwalker/git_uploads/python_virtual_environments/

---

# DEPENDENCIES INSTALLED:
Note: not every environment installs every dependency
- YT (cosmological simulations): https://github.com/yt-project/yt
- YT Astro Analysis (cosmological simulations): https://github.com/yt-project/yt_astro_analysis
- Trident (cosmological simulations): https://github.com/trident-project/trident
- Baseband (radio astronomy data analysis): https://github.com/mhvk/baseband
- Riptide (folding algorithm for pulsars): https://github.com/v-morello/riptide
- FRBPA (periodicity searcher for FRBs): https://github.com/KshitijAggarwal/frbpa.git
- P4J (requirement for FRBPA): https://github.com/phuijse/P4J

---

# INSTRUCTIONS FOR CREATING A VIRTUAL ENVIRONMENT

In general, to initially set up one of the virtual environments, one can navigate to the directory containing these scripts and run:

```
>bash <environment_script.sh>
>source /<environment_directory>/bin/activate
>pip install ipython --force-reinstall
>pip install notebook --force-reinstall
```
where `<environment_script.sh>` is the virtual environment script in question, and `<environment_directory` is the directory which is created when the script is run. Then the virtual environment can be used any time by running:

```
>source <loc>/<environment_directory>/bin/activate
```

where <loc> is the directory containing the scripts. This command can be added as an alias to your bashrc file for easy usage. For more specific instructions regarding each individual environment, see the comments in the scripts.


