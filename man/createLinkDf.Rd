% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linkDf.R
\name{createLinkDf}
\alias{createLinkDf}
\title{Create a data frame which contains features to link (indices)}
\usage{
createLinkDf(similarityMatrix, spectra, condition, lower, upper)
}
\arguments{
\item{similarityMatrix}{`matrix`, a similarity matrix that contains the
similarity measure between all precursors in the data set}

\item{spectra}{Spectra object containing spectra of similarityMatrix}

\item{condition}{`character`, vector containing the
conditions/samples for which a linkDf is created}

\item{lower}{`numeric`, threshold value for similarity values,
below this value linked features will not be included}

\item{upper}{`numeric`, threshold value for similarity values,
above this value linked features will not be included}
}
\value{
`createLinkDf` returns a data frame that gives per each row
information on linked features
}
\description{
Create a data frame which contains features to link (indices).
}
\details{
`lower` and `upper` are numerical values
and truncate similar spectra. The function createLinkDf is a wrapper
for the functions `createLink0df` and `thresholdLinkDf`.
}
\examples{
data("spectra", package = "MetCirc")
data("similarityMat", package = "MetCirc")
link0df <- createLink0df(similarityMatrix = similarityMat,
    spectra_tissue, condition = c("SPL", "LIM", "ANT", "STY"))
createLinkDf(similarityMatrix = similarityMat, spectra = spectra_tissue,
    condition = c("SPL", "LIM", "ANT", "STY"), lower = 0.5, upper = 1)

}
\author{
Thomas Naake, \email{thomasnaake@googlemail.com}
}
