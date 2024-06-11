#!/bin/bash

module reset
module purge
deactivate


module load StdEnv/2020
module load gcc/9.3.0
module load libfabric/1.10.1 ipykernel/2023a \
    sqlite/3.38.5 postgresql/12.4 gdal/3.5.1 \
    udunits/2.2.28 cdo/2.2.1 gentoo/2020 \
    imkl/2020.1.217 openmpi/4.0.3 scipy-stack/2023a \
    jasper/2.0.16 freexl/1.0.5 geos/3.10.2 \
    libaec/1.0.6 mpi4py/3.1.3 \
    gcc/9.3.0 libffi/3.3 hdf5/1.10.6 \
    libgeotiff-proj901/1.7.1 librttopo-proj9/1.1.0 \
    proj/9.0.1 eccodes/2.25.0 netcdf-fortran/4.5.2 \
    mii/1.1.2 ucx/1.8.0 python/3.10.2 \
    netcdf/4.7.4 cfitsio/4.1.0 \
    libspatialite-proj901/5.0.1 expat/2.4.1 \
    yaxt/0.9.0 libspatialindex/1.8.5 openblas/0.3.17

module save fhimp-mods

rm -rf ./fhimp_venv
virtualenv ./fhimp_venv
source ./fhimp_venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install git+https://github.com/ShervanGharari/hydrant
pip install git+https://github.com/ShervanGharari/hypeflow
pip install git+https://github.com/kasra-keshavarz/meshflow
pip install git+https://github.com/ShervanGharari/EASYMORE.git@utility
ipython kernel install --name "fhimp_venv" --user # add virtual env to kernel


# close the gistool and datatool
rm -rf datatool gistool
git clone https://github.com/kasra-keshavarz/datatool
git clone https://github.com/kasra-keshavarz/gistool
