---
title: RcppAramdillo & OS X Mavericks configuration
author: Boris Hejblum
date: '2014-08-03'
categories:
  - R
tags:
  - -lquadmath
  - error
  - RcppArmadillo
slug: rcpparamdillo-os-x-mavericks-configuration
---

I am in the process of speeding up some code, and I have been lured by the promises of Rcpp. Since the functions I am working on are mainly linear algebra, I wanted to try out RcppArmadillo. This put my googling skills to a test as I spent (way) too much time trying to figure out errors until I found [this post](http://www.thecoatlessprofessor.com/programming/rcpp-rcpparmadillo-and-os-x-mavericks-lgfortran-and-lquadmath-error). Thank you James Balamuta ! Be warned RcppArmadillo, [microbenchmarking](http://adv-r.had.co.nz/Performance.html#microbenchmarking) is on !
