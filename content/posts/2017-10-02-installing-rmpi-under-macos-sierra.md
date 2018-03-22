---
title: Installing Rmpi under MacOS Sierra
author: Boris Hejblum
date: '2017-10-02'
slug: installing-rmpi-under-macos-sierra
---

I recently updated my set-up, and because I use a High-Performance cluster from my University (kudos to [avakas](https://redmine.mcia.univ-bordeaux.fr/projects/cluster-avakas/)) to run various simulations and analyses, I have MPI and Rmpi installed on my laptop in order to test my scripts before submitting them to the big cluster. So I installed openmpi from homebrew very easily:

    brew update
    brew install open-mpi

But then I had extensive trouble installing the Rmpi package...

After extensive investigation (and google searches), I landed on this  [stackoverflow](https://stackoverflow.com/questions/44573568/mpirun-doesnt-work-and-ask-to-change-tmpdir-variable-to-tmp) thread. It turns out the problem comes from MacOS Sierra, which is generating quite long temporary folder names (by default). The solution is quite simple, simply add the following line in the _openmpi-mca-params.conf_  file (located in _/usr/local/Cellar/open-mpi/2.1.1/etc/_ if you installed openmpi from homebrew):_
_

>orte_tmpdir_base = /tmp</blockquote>

This avoids having to set TMPDIR every time you use MPI ! After that I was able to install Rmpi and to run it smoothly without further tuning, all from within Rstudio.
