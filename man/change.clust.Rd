% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F025.change.clust.R
\name{change.clust}
\alias{change.clust}
\title{Change the cluster number or re-name them}
\usage{
change.clust(x = NULL, change.clust = 0, to.clust = 0,
  clust.reset = F)
}
\arguments{
\item{x}{An object of class iCellR.}

\item{change.clust}{The name of the cluster to be changed.}

\item{to.clust}{The new name for the cluster.}

\item{clust.reset}{Reset to the original clustering.}
}
\value{
An object of class iCellR.
}
\description{
This function re-names the clusters in the best.clust slot of the iCellR object.
}
\examples{
\dontrun{
my.obj <- change.clust(my.obj, change.clust = 3, to.clust = 1)
my.obj <- change.clust(my.obj, change.clust = 2, to.clust = "B Cell")
my.obj <- change.clust(my.obj, clust.reset = T)
}
}
