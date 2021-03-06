\name{mixVBEM}
\alias{mixVBEM}
\title{Estimate posterior distribution on mixture proportions of a mixture model by a Variational Bayes EM algorithm}
\usage{
  mixVBEM(matrix_lik, prior, post.init = NULL, tol = 1e-04,
    maxiter = 5000)
}
\arguments{
  \item{matrix_lik:}{a n by k matrix with (j,k)th element
  equal to \eqn{f_k(x_j)}.}

  \item{prior:}{a k vector of the parameters of the
  Dirichlet prior on \eqn{\pi}. Recommended to be rep(1,k)}

  \item{post.init:}{the initial value of the posterior
  parameters. If not specified defaults to the prior
  parameters.}

  \item{tol:}{the tolerance for convergence of
  log-likelihood bound.}

  \item{maxiter:}{the maximum number of iterations
  performed}
}
\value{
  A list, whose components include point estimates (pihat),
  the parameters of the fitted posterior on \eqn{\pi}
  (pipost), the bound on the log likelihood for each
  iteration (B) and a flag to indicate convergence
  (converged).
}
\description{
  Given the individual component likelihoods for a mixture
  model, estimates the posterior on the mixture proportions
  by an VBEM algorithm. Used by the ash main function;
  there is no need for a user to call this function
  separately, but it is exported for convenience.
}
\details{
  Fits a k component mixture model \deqn{f(x|\pi) = \sum_k
  \pi_k f_k(x)} to independent and identically distributed
  data \eqn{x_1,\dots,x_n}. Estimates posterior on mixture
  proportions \eqn{\pi} by Variational Bayes, with a
  Dirichlet prior on \eqn{\pi}. Algorithm adapted from
  Bishop (2009), Pattern Recognition and Machine Learning,
  Chapter 10.
}

