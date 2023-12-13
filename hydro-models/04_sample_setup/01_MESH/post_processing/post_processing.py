#import hydrant.util as util
import hydrant.util.util as util
data = util.mesh_output_txt_to_nc('./results/SNO_D.csv',
                             data_frame_DateTime_column = 'time',
                             variable_name = 'streamflow',
                             variable_dim_name = 'id',
                             unit_of_variable = 'm**3 s**-1',
                             variable_long_name = 'streamflow in river segments',
                             Fill_value = '-9999',
                             ddb_file = 'MESH_drainage_database.nc',
                             rank_var_ddb = 'Rank',
                             segID_var_ddb = 'subbasin',
                             nc_file_to_save = './results/SNO_D.nc')
