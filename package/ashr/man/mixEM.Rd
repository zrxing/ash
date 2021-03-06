\name{mixEM}
\alias{mixEM}
\title{Estimate mixture proportions of a mixture model by EM algorithm}
\usage{
  mixEM(matrix_lik, prior, pi.init = NULL, tol = 1e-04,
    maxiter = 5000)
}
\arguments{
  \item{matrix_lik,}{a n by k matrix with (j,k)th element
  equal to \eqn{f_k(x_j)}.}

  \item{prior,}{a k vector of the parameters of the
  Dirichlet prior on \eqn{\pi}. Recommended to be rep(1,k)}

  \item{pi.init,}{the initial value of \eqn{\pi} to use. If
  not specified defaults to (1/k,...,1/k).}

  \item{tol,}{the tolerance for convergence of
  log-likelihood.}

  \item{maxiter}{the maximum number of iterations
  performed}
}
\value{
  A list, including the estimates (pihat), the log
  likelihood for each interation (B) and a flag to indicate
  convergence
}
\description{
  Given the individual component likelihoods for a mixture
  model, estimates the mixture proportions by an EM
  algorithm.
}
\details{
  Fits a k component mixture model \deqn{f(x|\pi) = \sum_k
  \pi_k f_k(x)} to independent and identically distributed
  data \eqn{x_1,\dots,x_n}. Estimates mixture proportions
  \eqn{\pi} by maximum likelihood, or by maximum a
  posteriori (MAP) estimation for a Dirichlet prior on
  $\pi$ (if a prior is specified).  Used by the ash main
  function; there is no need for a user to call this
  function separately, but it is exported for convenience.
}

