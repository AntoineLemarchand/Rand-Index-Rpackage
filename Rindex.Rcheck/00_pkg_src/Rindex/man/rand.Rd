\name{rand}
\alias{rand}
\title{rand}
\description{returns a measure of the similarity between two data clusterings}
\usage{
rand(dataframe, method1 = "single", method2 = "complete")
}
\arguments{
  \item{dataframe}{dataframe containing at least 2 columns named after clustering methods}
  \item{method1}{clustering method you want to compare to method2}
  \item{method2}{clustering method you want to compare to method1}
}
\details{The rand index is a measure of the similarity between two data clusterings, it is calculated, given X and Y two data clusterings, by dividing the number of agreements between X and Y by the sum of the number of the agreements and the number of the disagreements between X and Y}
\value{
  \item{rand.index}{a measure of the similarity between two data clusterings, a number between 0 and 1}
}
\examples{rand(clustering(norme(2)))}

