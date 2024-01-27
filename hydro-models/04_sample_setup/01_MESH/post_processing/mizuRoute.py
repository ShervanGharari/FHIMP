import hydrant.util.util as util
import hydrant.mizuRoute.mizuRoute as mz
import pandas as pd

#inputs
path_result = './mizuRoute/output/' # or can be './'
path_station_seg = './post_processing/'

# read the station seg files and save the files
station_seg = pd.read_csv(path_station_seg+'domain_station_segment.csv')

for index, row in station_seg.iterrows():

    station_name = row['Station ID']
    if row['up'] == 1:
        order_ids = row[['up1','up2','up3','up4']].values # for merit basins
        order_ids = [x for x in order_ids if x >= 0.1] # keep positive values
    else:
        order_ids = row['seg ID']

    mz.reorder_output(path_result+'outfile.nc',
                      order_ids,
                      'reachID',
                      'x',
                      'time',
                      'time',
                      var_to_keep = 'IRFroutedRunoff',
                      sum_flag = True,
                      save_reordered = True,
                      reorder_pre = 'MESH_mizuRoute_at_station_'+station_name+'_',
                      output_folder = path_result+'/')