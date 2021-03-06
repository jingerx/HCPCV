% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datagenerating.R
\name{generate_1D_data}
\alias{generate_1D_data}
\title{Generate 1 dim data}
\usage{
generate_1D_data(
  n = 2048,
  residualform = "normal",
  sig_const = 0.5,
  verbose = FALSE
)
}
\arguments{
\item{n}{integer, sample size}

\item{residualform}{string, the residual form, which can take value of 
"normal", "t", "chisq", "uniform", 
or "quasinormal" but only when p = 1.
All the variance of these residual data are normalized to 1.
So we can only focus on different shapes of different distrubution.}

\item{sig_const}{scalar, default 0.5, the constant before the residual}

\item{verbose}{bool, default FALSE, whether to return a list of 
data with (X, mu, eps) or X.}
}
\value{
A random vector of length n.
}
\description{
CP(A) - MODEL I: univariate mean change-point model.
}
\section{Details}{

CP(A) - Both the number and locations of changepoints are fixed.

CP(B) - Both the number and locations of changepoints can vary with the 
sample size n.

MODEL I: univariate mean change-point model.

We adopt the blocks setting which is widely used in the literature.

The signals \eqn{theta_{j}}'s (the mean) are chosen as a piecewise constant 
function with Kn and the scale parameter \code{sig_const = 0.5}.
\deqn{x_{i} = \theta_{j} + sig_const * \epsilon_{i}}.
\eqn{\theta_{j}} can take values alternatively between 0 and 1.

Specifically, \eqn{K_n = 11} and 
\deqn{ \tau^{*}_{K_{n}} / n = 
  (0.1, 0.13, 0.15, 0.23, 0.25, 0.40, 0.44, 0.65, 0.76, 0.78, 0.81 ). }
\eqn{K_n = 11} is the number of the true change-points \eqn{\tau^{*}}.
}

\examples{
x <- generate_1D_data(n=2048, residualform="normal", sig_const=0.5)
}
