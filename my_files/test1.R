

# include libarys:
library(devtools)
library(knitr) # We need the knitr package to set chunk options
# library(spew) # problems with dependecies -> install_github...
library(ggplot2)

# use devtool (+ dependencies) for spew-import 
install_github("leerichardson/spew")

#--------------Start-------------------------------------------

# maybe herer data input?
data(tartanville)

ts <- spew(tartanville$pop_table, tartanville$shapefile,tartanville$pums_h, tartanville$pums_p)

plot_syneco(tartanville, ts, region_name = "Tartanville")

out <-  summarize_spew_out(ts, vars_to_sum_h = c("puma_id"),
                           vars_to_sum_p = c("SEX"),
                           vars_to_sum_env = NULL, top_region_id = "Tartanville")

g <- plot_characteristic_proportions(feature_name = "Sex", legend_name = "Sex",
                                     feature_df = out$SEX,
                                     category_names = c("Male", "Female"),
                                     text_size = 10,
                                     region_colors = c("lightslateblue", "maroon1"))

f <- plot_pop_totals(feature_df = out$pop_totals, type = "n_people")



# i dont know why it don't terminate

 
