list.of.packages.cran <- c(
  "arm",
  "car",
  "corrplot",
  "FRK",
  "gghighlight",
  "ggplot2",
  "ggmap",
  "GISTools",
  "gridExtra",
  "gstat",
  "jtools",
  "kableExtra",
  "knitr",
  "lme4",
  "lmtest",
  "lubridate",
  "MASS",
  "merTools",
  "plyr",
  "RColorBrewer",
  "rgdal",
  "sf",
  "sjPlot",
  "sp",
  "spgwr",
  "spatialreg",
  "spacetime",
  "stargazer",
  "tidyverse",
  "tmap",
  "viridis"
)

new.packages.cran <- list.of.packages.cran[!(list.of.packages.cran %in% installed.packages()[,"Package"])]
if(length(new.packages.cran)) install.packages(new.packages.cran)

for(i in 1:length(list.of.packages.cran)) {
  library(list.of.packages.cran[i], character.only = T)
}
