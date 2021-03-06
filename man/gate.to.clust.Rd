% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F024.gate.to.clust.R
\name{gate.to.clust}
\alias{gate.to.clust}
\title{Assign cluster number to cell ids}
\usage{
gate.to.clust(x = NULL, my.gate = NULL, to.clust = 0)
}
\arguments{
\item{x}{An object of class iCellR.}

\item{my.gate}{A vector of cell ids.}

\item{to.clust}{A cluster id to be assigned to the provided cell ids.}
}
\value{
An object of class iCellR.
}
\description{
This function takes an object of class iCellR and assigns cluster number to a vector of cell ids.
}
\examples{
\dontrun{
my.obj <- gate.to.clust(my.obj,  my.gate = readLines("ids.txt"), to.clust = 1)
}
}
