#!/bin/bash

# module and python virtual env
module restore fhimp-mods
source ../../../virtual_env/fhimp_venv/bin/activate

# create results folder
rm -rf ./results
mkdir ./results

# date and time
echo "start at $( date )"
./mpi_sa_mesh
echo "end at $( date)"

python post_processing/post_processing.py
