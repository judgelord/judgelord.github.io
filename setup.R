## Run this script with `source(here::here("setup.R"))`

options(stringsAsFactors = F)

## Add any R packages you require. 
## Here are some we will use in 811:
requires <- c("tidyverse", # tidyverse includes dplyr and ggplot2
              "blogdown",
              "ggridges",
              "broom",
              "tidytext",
              "tm",
              "stm",
              "wordcloud",
              "grid",
              "gridExtra",
              "magrittr",
              "foreign",
              "readstata13",
              "tidytext",
              "stm",
              "topicmodels",
              "textfeatures",
              "cleanNLP", ## https://statsmaths.github.io/cleanNLP/
              "maps",
              "sf",
              "here",
              "remotes",
              "knitr")

## Install any you don't have
to_install <- c(requires %in% rownames(installed.packages()) == FALSE)
install.packages(c(requires[to_install], "NA"), repos = "https://cloud.r-project.org/" )
rm(requires, to_install)

## Load all required R packages
library(tidyverse)
library(broom)
library(ggplot2); theme_set(theme_bw())
library(magrittr)
library(tidytext)
library(tm)
library(stm)
library(wordcloud)
library(gridExtra)
library(grid)
library(foreign)
library(readstata13)
library(tidytext)
library(stm)
library(topicmodels)
library(textfeatures)
library(cleanNLP) ## https://statsmaths.github.io/cleanNLP/ 
library(maps)
library(sf)
library(here)
library(knitr)
library(ggridges)
library(blogdown)



## Sets defaults for R chunks
knitr::opts_chunk$set(echo = FALSE, # echo = TRUE means that your code will show
                      warning = FALSE,
                      message = FALSE,
                      fig.align = "center", 
                      fig.path= 'Figs/', ## where to save figures
                      fig.height = 3,
                      fig.retina = 6,
                      fig.width = 8)

# Xaringan
if(!"xaringan" %in% rownames(installed.packages() ) ){
  remotes::install_github('yihui/xaringan')
}
if(!"xaringanthemer" %in% rownames(installed.packages() ) ){
  remotes::install_github('gadenbuie/xaringanthemer')
}

library("xaringan")
library("xaringanthemer")
