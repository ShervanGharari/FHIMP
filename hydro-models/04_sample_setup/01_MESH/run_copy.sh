#!/bin/bash

# copy MESH forcing from the source to folder
cp ~/scratch/test/MESH/MESH_drainage_database.nc     ./MESH/MESH_drainage_database.nc
cp ~/scratch/test/MESH/MESH_forcing.nc               ./MESH/MESH_forcing.nc

# copy mizuRoute ntopo
cp ~/scratch/test/domain/domain_ntopo.nc             ./mizuRoute/ancillary_data/domain_ntopo.nc

# copy domain station segment
cp ~/scratch/test/domain/domain_station_segment.csv  ./post_processing/domain_station_segment.csv
