% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shinyApp.R
\name{printInformationSelect}
\alias{printInformationSelect}
\title{Display information on connected features of selected features}
\usage{
printInformationSelect(select, spectra = NULL, linkDfInd, linkDf,
  similarityMatrix, roundDigits = 2)
}
\arguments{
\item{select}{`character`, obtained from groupname, `character` of selected feature}

\item{spectra}{`Spectra` object containing spectra that are compared in 
`similarityMatrix`}

\item{linkDfInd}{`numeric` indices of selected features}

\item{linkDf}{`data.frame` that contains information of linked features for given 
thresholds}

\item{similarityMatrix}{`matrix` that is used to get information on the 
degree of similarity, `similarityMat` is an ordered version of a 
similarity matrix, see `?orderSimilarityMatrix`}

\item{roundDigits}{`numeric`,  how many digits should be displayed?}
}
\value{
`character` that is in HTML format
}
\description{
Displays information on connected features of selected features.
}
\details{
`printInformationSelect` is for internal use.
}
\examples{
data("spectra", package = "MetCirc")
similarityMat <- compare_Spectra(spectra_tissue[1:10],
    fun = normalizeddotproduct, binSize = 0.01)
linkDf <- createLinkDf(similarityMatrix = similarityMat,
    spectra = spectra_tissue[1:10], 
    condition = c("SPL", "LIM", "ANT", "STY"), lower = 0.5, upper = 1)
## cut link data.frame (here: only display links between groups)
linkDf_cut <- cutLinkDf(linkDf, type = "inter")
groupname <- c(as.character(linkDf_cut[, "spectrum1"]),
            as.character(linkDf_cut[, "spectrum2"]))
groupname <- unique(groupname)
## arbitrarily select a feature
ind <- 2
linkDfInds <- getLinkDfIndices(groupname[ind], linkDf_cut)
MetCirc:::printInformationSelect(groupname[ind], 
    spectra = spectra_tissue[1:10], linkDfInd = linkDfInds, 
    linkDf = linkDf_cut, similarityMatrix = similarityMat)

}
\author{
Thomas Naake, \email{thomasnaake@googlemail.com}
}
