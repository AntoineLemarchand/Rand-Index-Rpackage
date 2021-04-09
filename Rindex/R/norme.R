#' norme
#'
#' @param n
#' @param mu
#' @param sigma
#' @param nb_observations
#'
#' @return
#' @export
#'
#' @examples
norme=function(n,mu=10,sigma=1,nb_observations=200){
  liste_mu=list()
  liste_sigma=list()
  liste_lois=list()
  liste_varx=list()
  liste_vary=list()
  liste_covxy=list()
  ind_pairs=seq(1,nb_observations,2)
  ind_impairs=seq(2,nb_observations,2)
  x=NULL
  y=NULL
  for (i in 1:n){
    liste_mu[i]=list(sample(0:mu,2,replace = TRUE))
    liste_varx[[i]]=sample(1:sigma,1)
    liste_vary[[i]]=sample(1:sigma,1)
    liste_covxy[[i]]=sample(min(liste_varx[[i]],liste_vary[[i]]),1)
    liste_sigma[i]=list(matrix(c(liste_varx[[i]],rep(liste_covxy[[i]],2),liste_vary[[i]]),2,2))
    liste_lois[i]=list(rnorm(nb_observations,liste_mu[[i]],liste_sigma[[i]]))
    x=c(x,liste_lois[[i]][ind_pairs])
    y=c(y,liste_lois[[i]][ind_impairs])
  }
  mvr=data.frame(x,y)
  return(mvr)
}
