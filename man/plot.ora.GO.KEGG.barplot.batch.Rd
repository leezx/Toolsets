% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Plot.R
\name{plot.ora.GO.KEGG.barplot.batch}
\alias{plot.ora.GO.KEGG.barplot.batch}
\title{Draw GO KEGG barplot for a gene list}
\usage{
\method{plot}{ora.GO.KEGG.barplot.batch}(anno_list = go_list, type)
}
\arguments{
\item{anno_list}{a gene list}

\item{type}{type of the input data}
}
\value{
a dataframe
}
\description{
Draw GO KEGG barplot for a gene list
}
\examples{
options(repr.plot.width=4, repr.plot.height=9)
go_list <- plot.GO.KEGG.barplot.batch(result$go_list, type="GO")

}
