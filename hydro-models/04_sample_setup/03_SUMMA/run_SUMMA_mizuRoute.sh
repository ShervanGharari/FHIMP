#!/bin/bash

# module and python virtual env
module restore fhimp-mods
source ~/FHIMP/virtual_env/fhimp_venv/bin/activate

# run SUMMA
bash run_SUMMA.sh

# run mizuRoute
bash run_mizuRoute.sh
