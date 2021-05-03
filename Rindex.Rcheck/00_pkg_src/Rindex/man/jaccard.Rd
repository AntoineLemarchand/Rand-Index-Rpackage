\name{jaccard}
\alias{jaccard}
\title{jaccard}
\description{returns a measure of the similarity between two data clusterings}
\usage{
jaccard(dataframe, method1 = "single", method2 = "complete")
}
\arguments{
  \item{dataframe}{dataframe containing at least 2 columns named after clustering methods}
  \item{method1}{clustering method you want to compare to method2}
  \item{method2}{clustering method you want to compare to method1}
}
\details{The jaccard index is a measure of the similarity between two data clusterings, and is defined as the size of the intersection divided by the size of the union of the sample sets}
\value{
  \item{jaccard.index}{a measure of the similarity between two data clusterings, a number between 0 and 1}
}
\examples{jaccard(clustering(norme(2)))}

