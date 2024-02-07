# code for getting counts per hexagon

library(sf)
library(galah)
library(ggplot2)
library(viridis)

# first get a map
# to get Australian State data from a geodatabase, subset to ACT only
# st_layers("./data_raw/AustralianStates.gdb") # to check layers
ausstates <- st_read("./data/AustralianStates.gdb", layer = "States")[, 1]
colnames(ausstates)[1] <- "state" # for prettiness reasons
# act1 <- ausstates[1, ]
# or convert to a polygon
# act <- sf::st_cast(ausstates[1, ], "MULTIPOLYGON") # works for multiple states too
aus <- sf::st_cast(ausstates, "MULTIPOLYGON")
# aus2 <- st_simplify(st_as_sf(ausstates), dTolerance = 0.05)

# create hexagonal grid
aus_grid <- st_make_grid(aus,
  what = "polygons", cellsize = 1.0,
  square = FALSE, flat_topped = TRUE)
plot(aus_grid) # works
aus_grid <- st_as_sf(aus_grid)


# get counts
count_list <- unlist(lapply(
  seq_len(nrow(aus_grid)),
  function(a){
    ala_counts(location = select_locations(aus_grid[a, ]))}))

aus_grid$n <- unlist(count_list)
saveRDS(aus_grid, "./data/aus_grid.rds")
# aus_grid <- readRDS("./data/aus_grid.rds")

# plot
ggplot(aus_grid, aes(fill = log10(n))) +
  geom_sf(color = NA) +
  labs(fill = "Number of\nrecords\n(* 10^x)") +
  scale_fill_viridis(
    limits = c(2, 7),
    direction = -1, 
    option = "magma", 
    begin = 0.1, 
    end = 0.9) +
  theme_void()
