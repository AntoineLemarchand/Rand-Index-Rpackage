\name{clustering}
\alias{clustering}
\title{clustering}
\description{Returns a dataframe with 8 new columns, each of which corresponding to a clustering method}
\usage{clustering(dataframe, k = 3)}
\arguments{
  \item{dataframe}{dataframe composed of 2 numeric vectors, each having the same size and at least 2 values}
  \item{k}{number of clusters created}
}
\value{
  \item{dataframe}{dataframe with 8 new columns, each of which corresponding to a clustering method}
}
\examples{
dataframe=norme(n=10,mu=100,sigma=5)
clusters=clustering(dataframe, k=5)

## plot depicting the clusters from the method "single"
plot(clusters$x,clusters$y,col=clusters$single)
}
\keyword{cluster}
\details{mettre les différentes méthodes de clustering et les expliquer vite fait}
