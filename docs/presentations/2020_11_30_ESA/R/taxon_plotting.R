# replace with solution using ala_counts()

# taxon_children <- function(
#   df
# ){ # df returned by ala_taxa()
#   current_rank <- df$rank[1]
#   taxon_ranks <- c("kingdom", "phylum", "class", "order", "family", "genus", "species")
#   next_rank <- taxon_ranks[which(taxon_ranks == current_rank) + 1]
#   df_next <- df[(!is.na(df[[next_rank]]) & df$count > 0), ]
#   df_next <- df_next[order(df_next$count, decreasing = TRUE), ]
#   return(df_next)
# }

taxon_plot_data <- function(
  labels, # vector of taxon labels
  counts, # vector of counts
  color_scale = "viridis",
  log_scale = TRUE, # logical - should the result be log + 1 -scaled?
  gap = 0, # how much should the radius be reduced to decrease circle overlap?
  linear = FALSE
){
  if(log_scale){
    taxon_counts <- log(counts + 1)
  }else{
    taxon_counts <- counts
  }
  circle_df <- packcircles::circleProgressiveLayout(taxon_counts)
  if(linear){
    circle_df$x <- 0
    circle_df$y <- 0
    circle_df$x[2] <- sum(circle_df$radius[1:2])
    for(i in 3:nrow(circle_df)){
      circle_df$x[i] <- sum(c(
        circle_df$x[(i-1)],
        circle_df$radius[c((i-1), i)]
      ))
    }
    circle_plot_df <- make_circles(circle_df, gap = 0)
  }else{
    circle_plot_df <- make_circles(circle_df, gap = gap)
  }
  circle_plot_df$label <- factor(circle_plot_df$group,
    levels = unique(circle_plot_df$group),
    labels = labels)
  circle_plot_df$count <- rep(counts, each = 100)
  circle_plot_df$plotly_text <- paste0(
    "<b>",
    circle_plot_df$label,
    "</b><br>n = ",
    formatC(circle_plot_df$count, big.mark = ","))
  circle_plot_df$color <- rep(
    do.call(color_scale, args = list(
      n = length(labels),
      end = 0.9,
      direction = -1)),
    each = 100)
  return(circle_plot_df)
}

# map_plot_data <- function(
#   labels, # vector of taxon labels
#   counts, # vector of counts
#   log_scale = FALSE # logical - should the result be log + 1 -scaled?
# ){
#   if(log_scale){
#     taxon_counts <- log(counts + 1)
#   }else{
#     taxon_counts <- counts
#   }
# }