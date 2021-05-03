## ----setup, include = FALSE---------------------------------------------------
library(Rindex)
library(ggplot2)
knitr::opts_chunk$set(collapse = T, comment = "#>")

## -----------------------------------------------------------------------------
n = 4
Mu = 5 
sigm = 2       
nb_obs= 1000

df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           #creation of the data frame and implementing it 
                                  #in our function clustering


rand(dataframe = df,
        method1 = "single",
        method2 = "average")    #choice of method for our rand function 

ggplot(df) +                    
  aes(x,y) + 
geom_point(aes(color=average))  #creation of the graphic 

## -----------------------------------------------------------------------------
Mu = 10 
n = 4           #Constant for this example
sigm = 2        #Constant for this example 
nb_obs= 1000    #Constant for this example

df <- clustering(dataframe = norme(n.norms = n,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           #creation of the data frame and implementing it 
                                  #in our function clustering



rand(dataframe = df,
        method1 = "single",
        method2 = "average")    #choice of method for our rand function 

ggplot(df) +                    
  aes(x,y) + 
geom_point(aes(color=average))  #creation of the graphic 

## -----------------------------------------------------------------------------
Mu = 5          #Constant for this example 
n = 4           #Constant for this example
sigm = 10 
nb_obs= 1000    #Constant for this example

df <- clustering(dataframe = norme(n.norms = 4,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           #creation of the data frame and implementing it 
                                  #in our function clustering



rand(dataframe = df,
        method1 = "single",
        method2 = "average")    #choice of method for our rand function 

ggplot(df) +                    
  aes(x,y) + 
geom_point(aes(color=average))  #creation of the graphic 

## -----------------------------------------------------------------------------
Mu = 5          #Constant for this example
n = 16          #Constant for this example
sigm = 2        #Constant for this example 
nb_obs= 1000

df <- clustering(dataframe = norme(n.norms = 4,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           #creation of the data frame and implementing it 
                                  #in our function clustering


rand(dataframe = df,
        method1 = "single",
        method2 = "average")    #choice of method for our rand function 

ggplot(df) +                    
  aes(x,y) + 
geom_point(aes(color=average))  #creation of the graphic 

## -----------------------------------------------------------------------------
Mu = 5          #Constant for this example
n = 4           #Constant for this example
sigm = 2        #Constant for this example 
nb_obs= 100

df <- clustering(dataframe = norme(n.norms = 4,n = nb_obs,mu = Mu,sigma = sigm),
                 k = 3)           #creation of the data frame and implementing it 
                                  #in our function clustering



rand(dataframe = df,
        method1 = "single",
        method2 = "average")    #choice of method for our rand function 

ggplot(df) +                    
  aes(x,y) + 
geom_point(aes(color=average))  #creation of the graphic 

