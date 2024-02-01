#!/bin/bash

# module and python virtual env
module restore fhimp-mods
source ~/FHIMP/virtual_env/fhimp_venv/bin/activate # ~/FHIMP/virtual_env/fhimp_venv/bin/activate

# cd to MESH setup folder
cd MESH

# create results folder
rm -rf ./results
mkdir ./results

# date and time
echo "start at $( date )"
./mpi_sa_mesh
echo "end at $( date)"

# cd back
cd ..

cd post_processing
python MESH.py # to pass the output as nc file
cd ..
