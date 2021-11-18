# Everytime rstudio opens new slow fucking  session ... 
# i need to install odd packes here ...



# Error+Messages prevention
be_quiet <- suppressPackageStartupMessages

## --------------------local package.check --------------------------------------------------


packages <- c("rgeos", "plyr", "ggplot2" )

## Now load or install local pakages:


package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

## --------------------global package.check -------------------------------------------------

#install.packages("https://github.com/leerichardson/spew.git", dependencies = TRUE)
install.packages("https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-76.tar.gz", dependencies=TRUE)
install.packages("rtools", c="https://cran.r-project.org/bin/windows/Rtools")

## ---------------------extra attention package.check -------------------------------------------------
# win.binary tools repo tools machen dependencies nicht korrekt

write('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', file = "~/.Renviron", append = TRUE)
Sys.which("make")
install.packages("devtools", type = "win.binary", dependencies=TRUE)
install.packages("maptools", type = "win.binary", dependencies=TRUE)
#install.packages("spew", type = "win.binary", dependencies=TRUE)


writeLines("\n--- installed! ---\n")
# search printes all 
print(search())


# Manual option:
# extra packages (tools->install Packages (git-repo)) 

# Maybe windowsproblems
## write('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', file = "~/.Renviron", append = TRUE) #

