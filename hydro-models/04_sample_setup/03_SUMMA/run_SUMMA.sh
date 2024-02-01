#!/bin/bash

# module and python virtual env
module restore fhimp-mods
source ~/FHIMP/virtual_env/fhimp_venv/bin/activate

cd SUMMA

# create results folder
rm -rf ./results
mkdir ./results

echo "start at $( date )"
./summa -m fileManager.txt
echo "end at $( date)"

cd ..
