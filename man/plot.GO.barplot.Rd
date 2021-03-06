% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Plot.R
\name{plot.GO.barplot}
\alias{plot.GO.barplot}
\title{Draw barplot for GO dataframe}
\usage{
\method{plot}{GO.barplot}(barplot_df, color = "random")
}
\arguments{
\item{barplot_df}{GO dataframe from clusterProfiler}
}
\value{
a ggplot barplot object
}
\description{
Draw barplot for GO dataframe
}
\examples{
options(repr.plot.width=4, repr.plot.height=9)
plot.GO.barplot(df)

}
