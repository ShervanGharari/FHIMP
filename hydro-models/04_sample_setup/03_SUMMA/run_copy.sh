#!/bin/bash

# copy SUMMA forcing and attribute file from the source to folder
cp ~/scratch/test/SUMMA/SUMMA_forcing.nc             ./SUMMA/SUMMA_forcing.nc
cp ~/scratch/test/SUMMA/SUMMA_coldState.nc           ./SUMMA/SUMMA_coldState.nc
cp ~/scratch/test/SUMMA/SUMMA_trialParams.nc         ./SUMMA/SUMMA_trialParams.nc
cp ~/scratch/test/SUMMA/SUMMA_attributes.nc          ./SUMMA/SUMMA_attributes.nc

# copy mizuRoute ntopo
cp ~/scratch/test/domain/domain_ntopo.nc             ./mizuRoute/ancillary_data/domain_ntopo.nc

# copy domain station segment
cp ~/scratch/test/domain/domain_station_segment.csv  ./post_processing/domain_station_segment.csv
