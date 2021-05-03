#' norme
#'
#' @param n.norms number of normal distribution per column
#' @param mu mean of each distribution is in 0:mu
#' @param sigma standard deviation of each distribution is in 1:sigma
#' @param n number of observations per distribution
#'
#' @return
#' @export
#'
#' @examples
norme=function(n.norms, n = 100, mu = 0, sigma = 1){
  x=NULL
  y=NULL
  for (i in 1:n.norms){
    mean = sample(0:mu, 2, replace = TRUE)
    sd = sample(1:sigma, 2, replace = TRUE)
    x = c(x, rnorm(n, mean[1], sd[1]))
    y = c(y, rnorm(n, mean[2], sd[2]))
  }
  mvr=data.frame(x,y)
  return(mvr)
}
