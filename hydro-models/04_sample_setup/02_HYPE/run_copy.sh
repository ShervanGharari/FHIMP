#!/bin/bash

# copy MESH forcing from the source to folder
cp ~/scratch/test/HYPE/GeoClass.txt                  ./HYPE/GeoClass.txt
cp ~/scratch/test/HYPE/GeoData.txt                   ./HYPE/GeoData.txt
cp ~/scratch/test/HYPE/par.txt                       ./HYPE/par.txt
cp ~/scratch/test/HYPE/Pobs.txt                      ./HYPE/Pobs.txt
cp ~/scratch/test/HYPE/Tobs.txt                      ./HYPE/Tobs.txt
cp ~/scratch/test/HYPE/TMAXobs.txt                   ./HYPE/TMAXobs.txt
cp ~/scratch/test/HYPE/TMINobs.txt                   ./HYPE/TMINobs.txt
cp ~/scratch/test/HYPE/Pobs.nc                       ./HYPE/Pobs.nc
cp ~/scratch/test/HYPE/Tobs.nc                       ./HYPE/Tobs.nc
cp ~/scratch/test/HYPE/TMAXobs.nc                    ./HYPE/TMAXobs.nc
cp ~/scratch/test/HYPE/TMINobs.nc                    ./HYPE/TMINobs.nc

# copy mizuRoute ntopo
cp ~/scratch/test/domain/domain_ntopo.nc             ./mizuRoute/ancillary_data/domain_ntopo.nc

# copy domain station segment
cp ~/scratch/test/domain/domain_station_segment.csv  ./post_processing/domain_station_segment.csv
