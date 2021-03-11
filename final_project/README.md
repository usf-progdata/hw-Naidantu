
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bmggum

<!-- badges: start -->
<!-- badges: end -->

The goal of the final project is to develop an R package estimating
Multidimensional Generalized Graded Unfolding Model (MGGUM) using
Bayesian method. Specifically,the R package **rstan** that utilizes the
Hamiltonian Monte Carlo sampling algorithm was used for estimation.
Below are some important features of the bmggum package:

1.  Allows users to incorporate person covariates (e.g., age, gender,
    education) into the estimation to improve estimation accuracy.
2.  Automatically deals with missing data in a way similar to how full
    information maximum likelihood handles missing data.
3.  Allows users to estimate the **multidimensional version** of three
    unfolding models that are available in the software GGUM2004
    (Roberts, Fang, Cui, & Wang, 2006).
    -   UM8: The Generalized Graded Unfolding Model (GGUM).
    -   UM4: The Partial Credit Unfolding Model, which is the GGUM with
        all alphas constrained to 1.
    -   UM7: The Generalized Rating Scale Unfolding Model, which is the
        GGUM with equal taus across items.
4.  Five functions (i.e., bmggum( ), extract.bmggum( ), modfit.bmggum(
    ), bayesplot.bmggum( ), and itemplot.bmggum( )) are provided for
    model estimation, results extraction, model fit examination
    (e.g.,waic, loo, chisq/df), and plottings, respectively.

# contents

The following files and sub-folders are included in the project folder:

-   R: the functions included in the package.
-   man: generated documentations for functions by roxygen2.
-   vignettes:package tutorial.
-   docs: a pkgdown site for the package.
-   DESCRIPTION: a file stores the metadata about the package.
-   NAMESPACE: a file that lists imports and exports of functions.
-   NEWS.md: a file describes the changes compared to previous version.
-   Rproj: a RStudio project file.
