% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Toolsets.R
\name{rep.row}
\alias{rep.row}
\title{repeat the col or row for n times}
\usage{
\method{rep}{row}(x, n)
}
\arguments{
\item{x}{x}

\item{n}{n}
}
\value{
df
}
\description{
repeat the col or row for n times
}
\examples{
rep.df <- rep.col(all_tsne[,cluster], length(groups)) 
}
