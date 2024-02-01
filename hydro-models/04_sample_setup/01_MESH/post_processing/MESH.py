import hydrant.util.util as util
import hydrant.mizuRoute.mizuRoute as mz
import pandas as pd

#inputs
path_result_MESH = '../MESH/' # or can be './'
path_station_seg = './'

## SNOW
# change the daily discharge values from txt to nc
data = util.mesh_output_txt_to_nc(path_result_MESH+'results/SNO_D.csv',
                             data_frame_DateTime_column = 'time',
                             variable_name = 'SNO',
                             variable_dim_name = 'id',
                             unit_of_variable = 'mm',
                             variable_long_name = 'snow water equivalant',
                             Fill_value = '-9999',
                             ddb_file = path_result_MESH+'MESH_drainage_database.nc',
                             rank_var_ddb = 'Rank',
                             segID_var_ddb = 'subbasin',
                             nc_file_to_save = path_result_MESH+'results/SNO_D.nc')

## RFF
# change the daily discharge values from txt to nc
data = util.mesh_output_txt_to_nc(path_result_MESH+'results/RFF_D.csv',
                             data_frame_DateTime_column = 'time',
                             variable_name = 'RFF',
                             variable_dim_name = 'id',
                             unit_of_variable = 'mm/day',
                             variable_long_name = 'Runoff',
                             Fill_value = '-9999',
                             ddb_file = path_result_MESH+'MESH_drainage_database.nc',
                             rank_var_ddb = 'Rank',
                             segID_var_ddb = 'subbasin',
                             nc_file_to_save = path_result_MESH+'results/RFF_D.nc')

## STREAMFLOW
# change the daily discharge values from txt to nc
data = util.mesh_output_txt_to_nc(path_result_MESH+'results/QO_D.csv',
                             data_frame_DateTime_column = 'time',
                             variable_name = 'streamflow',
                             variable_dim_name = 'id',
                             unit_of_variable = 'm**3 s**-1',
                             variable_long_name = 'streamflow output from river segments',
                             Fill_value = '-9999',
                             ddb_file = path_result_MESH+'MESH_drainage_database.nc',
                             rank_var_ddb = 'Rank',
                             segID_var_ddb = 'subbasin',
                             nc_file_to_save = path_result_MESH+'results/QO_D.nc')

## STREAMFLOW
# change the daily discharge values from txt to nc
data = util.mesh_output_txt_to_nc(path_result_MESH+'results/QI_D.csv',
                             data_frame_DateTime_column = 'time',
                             variable_name = 'streamflow',
                             variable_dim_name = 'id',
                             unit_of_variable = 'm**3 s**-1',
                             variable_long_name = 'streamflow input from river segments',
                             Fill_value = '-9999',
                             ddb_file = path_result_MESH+'MESH_drainage_database.nc',
                             rank_var_ddb = 'Rank',
                             segID_var_ddb = 'subbasin',
                             nc_file_to_save = path_result_MESH+'results/QI_D.nc')

# read the station seg files and save the files
station_seg = pd.read_csv(path_station_seg+'domain_station_segment.csv')

for index, row in station_seg.iterrows():

    station_name = row['Station ID']
    if row['up'] == 1:
        order_ids = row[['up1','up2','up3','up4']].values # for merit basins
        order_ids = [x for x in order_ids if x >= 0.1] # keep positive values
    else:
        order_ids = row['seg ID']

    mz.reorder_output(path_result_MESH+'results/QO_D.nc',
                      order_ids,
                      'segID',
                      'id',
                      'time',
                      'time',
                      var_to_keep = 'streamflow',
                      sum_flag = True,
                      save_reordered = True,
                      reorder_pre = 'MESH_at_station_'+station_name+'_',
                      output_folder = path_result_MESH+'results/')
