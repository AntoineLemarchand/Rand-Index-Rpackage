# R Index for comparing cluster functions
This package has been created as a project for the university of Rennes 2 by 4 student in statistics.

## Purpose
This package aims to create clusters from a dataframe using different methods 
and compare them using two types of index.

## How it works
To create clusters from a dataframe (maybe using our inhome function "norme()"), use the function :

> df <- clustering(mydataframe, numberofgroups)

Then to compare two methods you can use :

> jaccard(df, method1, method2)

Or

> rand(df, method1, method2)
## Installation

Clone the repo in your package files : 
> if (!require("devtools")) install.packages("devtools")
> devtools::install_github("AntoineLemarchand/Rand-Index-Rpackage", build_vignettes = TRUE)

## Documentation
Simple doc
> ??jaccard()

Vignettes
> vignette("vignette_rand")

> vignette("vignette_jaccard")

#### Licence : MIT
