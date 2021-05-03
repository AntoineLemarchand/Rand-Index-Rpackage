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

## -----------------------------------------------------------------------------
Mu = 10 
n = 4           #Constant for this example
sigm = 2        #Constant for this example 
nb_obs= 100    #Constant for this example

#creation of the data frame and implementing it in our function clustering
df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           



rand(dataframe = df,
        method1 = "ward.D",
        method2 = "complete")    #choice of method for our rand function 

#creation of the graphics to compare the similarities
plot(df$x,df$y,col=df$ward.D, main="ward.D method")     
plot(df$x,df$y,col=df$complete, main="complete method")

## -----------------------------------------------------------------------------
Mu = 5          #Constant for this example 
n = 4           #Constant for this example
sigm = 10 
nb_obs= 100    #Constant for this example

#creation of the data frame and implementing it in our function clustering
df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           



rand(dataframe = df,
        method1 = "ward.D",
        method2 = "complete")    #choice of method for our rand function 

#creation of the graphics to compare the similarities
plot(df$x,df$y,col=df$ward.D, main="ward.D method")     
plot(df$x,df$y,col=df$complete, main="complete method")

## -----------------------------------------------------------------------------
Mu = 5          #Constant for this example
n = 10          
sigm = 2        #Constant for this example 
nb_obs= 100     #Constant for this example

#creation of the data frame and implementing it in our function clustering
df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           



rand(dataframe = df,
        method1 = "ward.D",
        method2 = "complete")    #choice of method for our rand function 

#creation of the graphics to compare the similarities
plot(df$x,df$y,col=df$ward.D, main="ward.D method")     
plot(df$x,df$y,col=df$complete, main="complete method")

## -----------------------------------------------------------------------------
Mu = 5          #Constant for this example
n = 4           #Constant for this example
sigm = 2        #Constant for this example 
nb_obs= 500

#creation of the data frame and implementing it in our function clustering
df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           



rand(dataframe = df,
        method1 = "ward.D",
        method2 = "complete")    #choice of method for our rand function 

#creation of the graphics to compare the similarities
plot(df$x,df$y,col=df$ward.D, main="ward.D method")     
plot(df$x,df$y,col=df$complete, main="complete method")

