# Everytime rstudio opens new slow session ... 
# i need to install packes ...

# Error+Messages suppression
be_quiet <- suppressPackageStartupMessages

## --------------------easy package install --------------------------------------------------

packages <- c("rgeos", "plyr", "ggplot2" )

## Now load or install CRAN-pakages:
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

## -------------------- global packages / work arround cran (most common r libary) -------------------------------------------------

#install.packages("https://github.com/leerichardson/spew.git", dependencies = TRUE)
install.packages("https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-76.tar.gz", dependencies=TRUE)
install.packages("rtools", c="https://cran.r-project.org/bin/windows/Rtools")

## --------------------- extra attention packages -------------------------------------------------

# win.binary tools because repo-tools dont get dependencies right 

write('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', file = "~/.Renviron", append = TRUE)
Sys.which("make")
install.packages("devtools", type = "win.binary", dependencies=TRUE)
install.packages("maptools", type = "win.binary", dependencies=TRUE)
#install.packages("spew", type = "win.binary", dependencies=TRUE)

# search printes all fundamental installed packages
writeLines("\n--- installed! ---\n")
print(search())

## --------------------- Manual option: insert packages -------------------------------------------------

# extra packages (tools->install Packages (git-repo)) 

# Maybe windowsproblems (Enviromental Problems in RStudio):
## write('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', file = "~/.Renviron", append = TRUE) #

