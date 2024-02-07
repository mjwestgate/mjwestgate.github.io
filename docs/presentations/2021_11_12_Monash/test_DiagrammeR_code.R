
code to test node building

```{r}
library(DiagrammeR)
node_labels <- c(
  # functions
  "ala_counts", "ala_species", "ala_media", "ala_occurrences", "ala_taxonomy",  # 1-5
  "select_taxa", "select_filters", "select_locations", "select_fields", # 6-9
  "search_fields", "find_field_values", "find_profiles", "find_profile_attributes", "find_ranks", # 10-14
  # arguments
  "taxa", "filters", "locations", "group_by", "fields", "profile", "down_to", "...", # 15-22
  # inputs
  "sf object", "string" # 23-24
)
nodes <- create_node_df(
  length(node_labels),
  type = c(rep("function", 14), rep("argument", 8), rep("input", 2)),
  label = node_labels,
  shape = c(rep("box", 14), rep("circle", 8), rep("none", 2))
)

edges <- create_edge_df(
  from = c(1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4),
  to = c(15, 16, 17, 18, 15, 16, 17, 15, 16, 17, 19, 15, 16, 17, 19),
  color = "grey50",
  dir = "none"
)

graph <- create_graph(nodes, edges)

render_graph(graph,
  layout = "fr"
)
# NOTES:
  # the plan with using create_graph would be to build a layout first, then
  # change the highlighing on individual nodes without changing the layout.
  # This doesn't work.
  # It is also not pretty
  # May have to put up with changing layouts for now
  
```