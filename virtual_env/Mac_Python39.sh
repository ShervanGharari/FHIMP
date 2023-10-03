#!/bin/bash

rm -rf FHIMP_venv

python3.9 -m pip install virtualenv
python3.9 -m virtualenv FHIMP_venv
source FHIMP_venv/bin/activate

python3.9 -m pip install --upgrade pip
python3.9 -m pip install xarray
python3.9 -m pip install geopandas
python3.9 -m pip install networkx
python3.9 -m pip install git+https://github.com/kasra-keshavarz/hydrant
python3.9 -m pip install git+https://github.com/kasra-keshavarz/meshflow

python3.9 -m pip install jupyter
python3.9 -m pip install ipykernel
python3.9 -m ipykernel install --name=FHIMP_venv # Add the new virtual environment to Jupyter
jupyter kernelspec list # list existing Jupyter virtual environments