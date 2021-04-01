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
clustering(dataframe = force(Aids2)[,3:4])
}
\keyword{cluster}
\details{mettre les différentes méthodes de clustering et les expliquer vite fait}
