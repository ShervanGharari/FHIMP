#!/bin/bash

# create results folder
mkdir ./results

# classic version using txt input files
# the info.txt should be adjusted for reading
# or writing output as txt files
# echo "start at $( date )"
# ./hype
# echo "end at $( date)"

# netcdf enabled version using nc input files
# the info.txt should be adjusted for reading
# or writing output as nc files
# date and time
echo "start at $( date )"
./hype_nc
echo "end at $( date)"
