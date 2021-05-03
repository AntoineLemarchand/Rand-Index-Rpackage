\name{norme}
\alias{norme}
\title{norme}
\description{Generates a dataframe containing 2 columns, each of which being \code{n.norms} normal distributions of \code{n} observations piled up where each distributions' mean is randomly selected between 0 and \code{mu}, same with the standard deviation between 1 and \code{sigma}.}
\usage{
norme(n.norms, n = 100, mu = 0, sigma = 1)
}
\arguments{
  \item{n.norms}{number of normal distribution per column}
  \item{mu}{mean of each distribution is in 0:mu}
  \item{sigma}{standard deviation of each distribution is in 1:sigma}
  \item{n}{number of observations per distribution}
}
\value{\code{norme} generates random deviates}
\examples{plot(norme(2))}
\keyword{ ~datagen }
\keyword{ ~distribution }

