% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/similarity.R
\name{normalizeddotproduct}
\alias{normalizeddotproduct}
\title{Calculate the normalized dot product}
\usage{
normalizeddotproduct(x, y, m = 0.5, n = 2, ...)
}
\arguments{
\item{x}{`Spectrum2` object from `MSnbase` containing intensity and m/z values, 
first MS/MS spectrum}

\item{y}{`Spectrum2` object from `MSnbase` containing intensity and m/z values, 
second MS/MS spectrum}

\item{m}{`numeric`, exponent to calculate peak intensity-based weights}

\item{n}{`numeric`, exponent to calculate m/z-based weights}

\item{...}{further arguments passed to MSnbase:::bin_Spectra}
}
\value{
`normalizeddotproduct` returns a numeric similarity coefficient between
0 and 1
}
\description{
Calculate the normalized dot product (NDP)
}
\details{
The normalized dot product is calculated according to the 
following formula: 
\deqn{NDP = \frac{\sum(W_{S1, i} \cdot W_{S2, i}) ^ 2}{ \sum(W_{S1, i} ^ 2) \cdot \sum(W_{S2, i} ^ 2) }}{\sum(W_{S1, i} \cdot W_{S2, i}) ^ 2 \sum(W_{S1, i} ^ 2) * \sum(W_{S2, i} ^ 2)},
with \eqn{W = [peak intensity]^{m} \cdot [m/z]^n}. For further information 
see Li et al. (2015): Navigating natural variation in herbivory-induced
secondary metabolism in coyote tobacco populations using MS/MS structural 
analysis. PNAS, E4147--E4155. 
`normalizeddotproduct` returns a numeric 
value ranging between 0 and 1, where 0 
indicates no similarity between the two MS/MS features, while 1 indicates 
that the MS/MS features are identical. Arguments can be passed to 
the function `MSnbase:::bin_Spectra`, e.g. to set the width of bins
(binSize). 
Prior to calculating \deqn{W_{S1}} or \deqn{W_{S2}}, all intensity values 
are divided by the maximum intensity value.
}
\examples{
data("spectra", package = "MetCirc")
x <- spectra_tissue[[1]]
y <- spectra_tissue[[2]]
normalizeddotproduct(x, y, m = 0.5, n = 2, binSize = 0.01)

}
\author{
Thomas Naake, \email{thomasnaake@googlemail.com}
}
