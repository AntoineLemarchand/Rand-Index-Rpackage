\name{rand}
\alias{rand}
\title{rand}
\description{returns a measure of the similarity between two data clusterings}
\usage{
rand(dataframe,method1,method2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataframe}{
%%     ~~Describe \code{x} here~~
}
\item{method1}{
%%     ~~Describe \code{x} here~~
}
\item{method2}{
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
function(dataframe, method1="single", method2="complete"){
  m11=0
  m00=0
  m10=0
  m01=0
  n<-nrow(dataframe)
  for (i in 1:n){
    z=rep(dataframe[i, method1],n)
    t=rep(dataframe[i, method2],n)
    m11 <- m11 + sum((z==dataframe[,method1])*(t==dataframe[,method2]))
    m00 <- m00 + sum((1-(z==dataframe[,method1]))*(1-(t==dataframe[,method2])))
    m10 <- m10 + sum((z==dataframe[,method1])*(1-(t==dataframe[,method2])))
    m01 <- m01 + sum((1-(z==dataframe[,method1]))*(t==dataframe[,method2]))
  }
  rand.index=(m11+m00)/(m11+m00+m10+m01)
  return(rand.index)
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
