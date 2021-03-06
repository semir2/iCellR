% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg.cor.R
\name{gg.cor}
\alias{gg.cor}
\title{Normalize ADT data.
This function takes data frame and Normalizes ADT data.}
\usage{
gg.cor(x = NULL, data.type = "imputed", gene1 = NULL, gene2 = NULL,
  conds = NULL, cell.size = 1, cell.transparency = 0.5,
  interactive = TRUE, out.name = "plot")
}
\arguments{
\item{x}{An object of class iCellR.}
}
\value{
An object of class iCellR
}
\description{
Normalize ADT data.
This function takes data frame and Normalizes ADT data.
}
\examples{
\dontrun{
gg.cor(my.obj, interactive = F, gene1 = "NKG7",gene2 = "GNLY", conds=c("WT"))
}

}
