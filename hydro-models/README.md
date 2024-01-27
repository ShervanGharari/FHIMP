## Domain Selection

Go to domain selection folder. Change the input. The input are the folder that the domain will be saved, target pfaf or pfafs, and possibily the segment station linking.

For example if your domain is West, you can call your path West and load the segment station of West alognside the correct pfaf that cover your domain.

## Model agnostic

Got to model agnostic section, set the path in the json file, the needed forcing variables or their length and execute the bash file given the json file to generate the needed files for setting up the models.

Also execute the jupyter notebook to massage the GIS files that are taken from the gistool for the next step.

## Model specific

Execute the model specific part for each model. It should save the needed files for model runs includes the forcing and geospatial data.

## Model execution

Go to the model sample set up. Open and change the path in run_copy.sh to transfere the needed file to the exact location the need to be.

By running the run_MESH.sh or run_mizuRoute.sh or mix of them you are able to run any of the part of the model as you wish. The ouput is located under MESH result or HYPE result or mizuRoute output file (in case mizuRoute is called).