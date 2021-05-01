\name{norme}
\alias{norme}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{norme}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
norme(n,mu,sigma,nb_observations)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{x} here~~
}
\item{mu}{
%%     ~~Describe \code{x} here~~
}
\item{sigma}{
%%     ~~Describe \code{x} here~~
}
\item{nb_observations}{
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(n,mu=10,sigma=1,nb_observations=200){
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
