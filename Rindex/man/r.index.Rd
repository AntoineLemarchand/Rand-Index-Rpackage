\name{r.index}
\alias{Rand Index}
\title{r.index}
\description{Returns a rand index from a dataframe of clustering methods}
\usage{r.index(clust)}
\arguments{
  \item{clust}{dataframe composed of at least 2 numeric vector and 2 methods of clustering methods, looking like this
   }
}
\value{
  \item{number}{The rand index of the two clustering methods}
}
\examples{
r.index(clustering(c(1,5,2,3,6,3,6)))
}
\keyword{cluster, rand index}
\details{à faire}
