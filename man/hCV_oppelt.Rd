% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/copss.R
\name{hCV_oppelt}
\alias{hCV_oppelt}
\title{High-dimensional cross-validation (hCV) method with OP or PELT algorithm}
\usage{
hCV_oppelt(X, W, cp_alg = cp_hdmean_op, penaltyform = "CV", normalized = TRUE)
}
\arguments{
\item{X}{N*p matrix}

\item{W}{if normalized is TRUE, then W is inverse of estimated_sigma_square(X); 
if is FALSE, then W = rep(1, ncol(X)).}

\item{cp_alg}{Change-point detection algorithm}

\item{penaltyform}{The penalty form, can be "BIC", "WANG", "ZOU" ,"CV", ""}

\item{normalized}{Bool, logical, TRUE or FALSE}
}
\description{
The hCV method to find the optimal number of change-points
}
\details{
The change-point detection algorithm can be OP or PELT.
}
