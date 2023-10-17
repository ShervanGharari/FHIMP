
Download Provinces/Territories, Cartographic Boundary File - 2016 Census
(version 2016, last accessed on August 10th, 2023) from
https://open.canada.ca/data/en/dataset/a883eb14-0c0e-45c4-b8c4-b54c4a819edb

```
import geopandas as gpd

shp = gpd.read_file('/Users/shg096/Downloads/lpr_000b16a_e/lpr_000b16a_e.shp')
shp_s = shp.to_crs(epsg=4326)
shp_s = shp_s.simplify(0.1)
shp_s.to_file('provinces.shp')
```