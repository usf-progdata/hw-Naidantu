% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods_extract.R
\name{extract}
\alias{extract}
\title{results extraction}
\usage{
extract(x, pars)
}
\arguments{
\item{x}{returned object}

\item{pars}{Names of extracted parameters. They can be "theta" (person trait estimates), "alpha" (item discrimination parameters), "delta" (item location parameters), "tau" (item threshold parameters), "cor" (correlations among latent traits), "lambda" (regression coefficients linking person covariates to latent traits), "data" (GGUM.Data after deleting respondents who endorse the same response options across all items), "fit" (the stanfit object), and "dimension" (the input row vector mapping each item to each trait). Note that when the model is UM4 in which alpha is fixed to 1, the extracted alpha is a n*1 matrix where n equals to the number of items.}
}
\value{
Selected results output
}
\description{
This function extracts estimation results.
}
\examples{
Data <- c(1,4,2,3)
Data <- matrix(Data,nrow = 2)
deli <- c(1,-1,2,1)
deli <- matrix(deli,nrow = 2)
ind <- c(1,2)
ind <- t(ind)
cova <- c(0.70, -1.25)
mod <- bmggum(GGUM.Data=Data,delindex=deli,trait=2,ind=ind,option=4,covariate=cova,iter=5,chains=1)
alpha <- extract(mod, 'alpha')
}
