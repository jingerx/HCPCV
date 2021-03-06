% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{Sxy_fun}
\alias{Sxy_fun}
\title{\eqn{S_{xy}}, the function of \eqn{S_{xy}}}
\usage{
Sxy_fun(X, Y, W, tau)
}
\arguments{
\item{X}{data matrix X}

\item{Y}{data matrix Y}

\item{W}{matrix with p*p, as the global normalizer, by dividide W[j]}

\item{tau}{the vector of change-points, including 0, and n. 
Usually tau is obtained by Xtrian, and this cv_objfun is used to 
calculate the cross-validation squared loss.}
}
\value{
the value of Sxy
}
\description{
The function of definition of \eqn{S_{xy}}
}
\details{
\deqn{ S_{xy}(\tau(L); W) = \sum_{l=0}^{L}
  \sum_{i=\tau_{l}+1}^{\tau{l+1}}
  (x_i - \bar(x)_{\tau_{l}, \tau{l+1}})^{\top} W 
  (y_i - \bar(y)_{\tau_{l}, \tau{l+1}}) }
}
