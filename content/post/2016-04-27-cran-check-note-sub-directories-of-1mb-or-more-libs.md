---
title: "CRAN CHECK NOTE sub-directories of 1Mb or more: libs"
author: Boris Hejblum
date: '2016-04-27'
categories:
  - miscellaneous
  - R
tags:
  - CRAN CHECK NOTE
  - RcppArmadillo
slug: cran-check-note-sub-directories-of-1mb-or-more-libs
---

I just released a new package on CRAN. It's called [**NPflow**](https://cran.r-project.org/web/packages/NPflow/), it performs **Dirichlet process mixture of multivariate normal, skew-normal or skew t-distributions  modeling**, you should check it out.

I was a little worried because the check from [Travis CI](https://travis-ci.org) was returning a NOTE. And even though the NOTEs seem like mild problems, ["you should strive to eliminate all NOTEs"](http://r-pkgs.had.co.nz/check.html) before submitting to CRAN !

Preparing for an email exchange with a member of the R core team, I wrote the following in the submission comments:

>It seems that on LINUX architectures, the CHECK returns one NOTE because the libs subdirectory is then above the 1MB threshold. However, it seems that this NOTE only appears under LINUX, but not under Windows or OSX.
My understanding is that this inflation of the libs subdirectory is due to the use of Rcpp. Indeed, some functions of the [package name] package have been written in C++ using Rcpp. They are needed to perform [what the package do]. Without the speed up gained from those C++ functions, this package would become impractical.</blockquote>

Less than 12 hours later, **NPflow** was instead already on the CRAN. Very smooth.
