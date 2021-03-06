% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F027.clust.stats.plot.R
\name{clust.stats.plot}
\alias{clust.stats.plot}
\title{QC on clusters (nGenes, UMIs and percent mito)}
\usage{
clust.stats.plot(x = NULL, plot.type = "box.mito",
  cell.color = "slategray3", cell.size = 1, cell.transparency = 0.5,
  box.color = "red", box.line.col = "green", back.col = "white",
  notch = F, interactive = TRUE, out.name = "plot")
}
\arguments{
\item{x}{An object of class iCellR.}

\item{plot.type}{Choose from "box.umi", "box.mito", "box.gene", default = "box.mito".}

\item{cell.color}{Choose a color for points in the plot.}

\item{cell.size}{A number for the size of the points in the plot, default = 1.}

\item{cell.transparency}{Color transparency for points in "scatterplot" and "boxplot", default = 0.5.}

\item{box.color}{A color for the boxes in the "boxplot", default = "red".}

\item{box.line.col}{A color for the lines around the "boxplot", default = "green".}

\item{notch}{Notch the box plots, default = F.}

\item{interactive}{If set to TRUE an interactive HTML file will be created, default = TRUE.}

\item{out.name}{If "interactive" is set to TRUE, the out put name for HTML, default = "plot".}
}
\value{
An object of class iCellR.
}
\description{
This function takes an object of class iCellR and creates QC plot.
}
\examples{
\dontrun{
clust.stats.plot(my.obj, plot.type = "box.mito", interactive = F, out.name = "box.mito.clusters")
}
}
