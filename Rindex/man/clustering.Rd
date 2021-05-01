\name{clustering}
\alias{clustering}
\title{clustering}
\description{Returns a dataframe with 8 new columns, each of which corresponding to a clustering method. \code{k} is the number of clusters.}
\usage{clustering(dataframe, k = 3)}
\arguments{
  \item{dataframe}{dataframe composed of 2 numeric vectors, each having the same size and at least 2 values}
  \item{k}{number of clusters created}
}
\details{The 8 clustering methods are as follow:\cr
"single" refers to the single linkage clustering method, which minimizes the distance between sets of observations.\cr \cr
"complete" refers to the complete linkage clustering method, which maximizes the distance between sets of observations.\cr \cr
"average" refers to the unweighted average linkage clustering method, which pairs unweighted groups using arithmetic mean.\cr \cr
"mcquitty" refers to the weighted average linkage clustering method, which pairs weighted groups using arithmetic mean.\cr \cr
"centroid" refers to unweighted centroid linkage clustering method, which is based on the distance between the centroids of unweighted groups.\cr \cr
"median" refers to weighted centroid linkage clustering method, which is based on the distance between the centroids of weighted groups.\cr \cr
"ward.D" refers to Ward's minimum variance method, which aims at finding compact, spherical clusters. Does not implement Ward's (1963) clustering criterion.\cr \cr
"ward.D2" refers to Ward's minimum variance method, but with Ward's clustering criterion implemented. The dissimilarities are squared before cluster updating.}
\value{
  \item{dataframe}{dataframe with 8 new columns, each of which corresponding to a clustering method}
}
\examples{
dataframe=norme(n_norms=5,mu=0,sigma=1)
clusters=clustering(dataframe, k=5)

## plot depicting the clusters from the method "complete"
plot(clusters$x,clusters$y,col=clusters$complete)
}
\keyword{ ~cluster }

