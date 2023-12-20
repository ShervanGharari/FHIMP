#!/bin/bash

# module and python virtual env
module restore fhimp-mods
source ~/FHIMP/virtual_env/fhimp_venv/bin/activate

# run MESH
bash run_HYPE.sh

# run mizuRoute
bash run_mizuRoute.sh
