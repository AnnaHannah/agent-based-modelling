# installing packages bk of R-versions
#install.packages("https://github.com/leerichardson/spew.git")
#install.packages("https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-76.tar.gz")
#install.packages("ggplot2")
# more here: ## extra packages (tools->install Packages (git-repo)) #

# include libarys:
library(knitr) # We need the knitr package to set chunk options
library(spew)
library(ggplot2)


# windows problems
## write('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', file = "~/.Renviron", append = TRUE) #


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

 
