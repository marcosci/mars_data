library(sf)
library(dplyr)
library(ggplot2)

# filter craters
mars_craters <- st_read("vector/opm_499_mars_nomenclature_polygons.gpkg") |> 
  filter(type == "Crater, craters") |> 
  select(type, the_geom)

ggplot(mars_craters) +
  geom_sf()

st_write(mars_craters, "vector/mars_craters.geojson", append=FALSE)

# filter montes
mars_montes <- st_read("vector/opm_499_mars_nomenclature_polygons.gpkg") |> 
  filter(type == "Mons, montes") |> 
  select(type, the_geom)

ggplot(mars_montes) +
  geom_sf()

st_write(mars_craters, "vector/mars_montes.geojson", append=FALSE)

