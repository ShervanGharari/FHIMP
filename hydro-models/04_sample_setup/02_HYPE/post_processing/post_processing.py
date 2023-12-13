import hydrant.mizuRoute.mizuRoute as mz
import pandas as pd

# read the station seg files and save the files
station_seg = pd.read_csv('./post_processing/West_station_segment.csv')

for index, row in station_seg.iterrows():

    station_name = row['Station ID']
    if row['up'] == 1:
        order_ids = row['up1','up2','up3','up4']
        order_ids = row[['up1','up2','up3','up4']].values # for merit basins
        order_ids = [x for x in order_ids if x >= 0.1] # keep positive values
    else:
        order_ids = row['seg ID']

    mz.reorder_output('./results/timeCOUT.nc',
                      order_ids,
                      'id',
                      'id',
                      'time',
                      'time',
                      var_to_keep = 'COUT',
                      sum_flag = True,
                      save_reordered = True,
                      reorder_pre = 'at_station_'+station_name+'_',
                      output_folder = './results/')
