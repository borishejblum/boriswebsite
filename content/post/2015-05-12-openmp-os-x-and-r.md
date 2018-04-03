---
title: "OpenMP, OS-X and R"
author: Boris Hejblum
date: '2015-05-12'
categories:
  - miscellaneous
  - R
  - Apple R developper
tags:
  - R
  - OpenMP
  - parallel computing
  - Apple 
slug: openmp-os-x-and-r
---

This is a quick technical post, that is as much about disseminating the information as putting it in a place where I can find it again in the future. I have been trying to use openMP in an R package that I am currently developing. OpenMP is supported by the popular gcc compiler. However, OS-X Xcode now ship with a clang compiler that does not support openMP. So first one needs to install gcc (from homebrew for instance). The thing is then to get R to actually use this gcc compiler. After many hours of struggle, I got it working by modifying the "~/.R/Makevars" file, in which clang must be replaced by gcc (or gcc-$version).

**EDIT:**
In the case where there is no .R folder and/or Makevar file, just create one. In order to replace clang by gcc, the two following lines suffice:
`
CC=gcc-4.9
CXX=g++-4.9
`
gcc-4.9 can of course be replace by any other compiler  you might want to use ( such as another version of gcc for instance), and an absolute path to the compiler can also be specified (see comment from kamvarz below)
