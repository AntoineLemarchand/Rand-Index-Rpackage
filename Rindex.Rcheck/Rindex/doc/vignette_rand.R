## ----setup, include = FALSE---------------------------------------------------
library(Rindex)
knitr::opts_chunk$set(collapse = T, comment = "#>")

## -----------------------------------------------------------------------------
n = 4
Mu = 5 
sigm = 2       
nb_obs= 100

#creation of the data frame and implementing it in our function clustering
df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           



rand(dataframe = df,
        method1 = "ward.D",
        method2 = "complete")    #choice of method for our rand function 

#creation of the graphics to compare the similarities
plot(df$x,df$y,col=df$ward.D, main="ward.D method")     
plot(df$x,df$y,col=df$complete, main="complete method")

