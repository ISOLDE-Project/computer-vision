#!/usr/bin/env bash
# Copyleft

# Define environment variables
MINICONDA=~/miniconda3/etc/profile.d/conda.sh
MINICONDA_ENV=isolde-cv
# To activate this environment, use
#
#     $ conda activate ibex
#
# To deactivate an active environment, use
#
#     $ conda deactivate

source $MINICONDA
conda activate $MINICONDA_ENV

# Get the root directory of the Git repository
export ROOT_DIR=$(git rev-parse --show-toplevel)

pip freeze | grep -v "@" | cut -d '=' -f 1,3 > python-requirements.txt
