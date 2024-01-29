#!/bin/bash

# module and python virtual env
module restore fhimp-mods
source ~/FHIMP/virtual_env/fhimp_venv/bin/activate # ~/FHIMP/virtual_env/fhimp_venv/bin/activate

# cd to MESH setup folder
cd mizuRoute

# create results folder
rm -rf ./output ./input
mkdir ./output ./input

# pass the MESH RFF_D.nc to input
cp ../MESH/results/RFF_D.nc ./input/RFF_D.nc
find ./input/ -type f -exec basename {} \; | grep -v 'input_files.txt' > ./input/input_files.txt
cp ./ancillary_data/param.nml.default ./input/param.nml.default

# date and time
echo "start at $( date )"
./route_runoff.cesm_coupling.exe ./settings/control_file.control
echo "end at $( date)"

# merge mizuRoute output
cd ./output
module load cdo; cdo mergetime domain.h.*.nc* outfile.nc
cd ..

# cd back
cd ..

python post_processing/mizuRoute.py # to pass the output as nc file
