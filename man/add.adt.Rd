% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F036.add.adt.R
\name{add.adt}
\alias{add.adt}
\title{Add CITE-seq antibody-derived tags (ADT)}
\usage{
add.adt(x = NULL, adt.data = "data.frame")
}
\arguments{
\item{x}{An object of class iCellR.}

\item{adt.data}{A data frame containing ADT counts for cells.}
}
\value{
An object of class iCellR
}
\description{
This function takes a data frame of ADT values per cell and adds it to the iCellR object.
}
\examples{
\dontrun{
my.obj <- add.adt(my.obj, adt.data = adt.data)
}

}
