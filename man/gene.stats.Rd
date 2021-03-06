% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F010.gene.stats.R
\name{gene.stats}
\alias{gene.stats}
\title{Make statistical information for each gene across all the cells (SD, mean, expression, etc.)}
\usage{
gene.stats(x = NULL, which.data = "raw.data", each.cond = F)
}
\arguments{
\item{x}{An object of class iCellR.}

\item{which.data}{Choose from "raw.data" or "main.data", default = "raw.data".}

\item{each.cond}{If TRUE each condition will be calculated, default = F.}
}
\value{
An object of class iCellR.
}
\description{
This function takes an object of class iCellR and provides some statistical information for the genes.
}
\examples{
\dontrun{
my.obj <- gene.stats(my.obj, which.data = "main.data")
}
}
