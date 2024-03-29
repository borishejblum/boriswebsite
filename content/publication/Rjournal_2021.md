+++
title = "Robust and Efficient Optimization Using a Marquardt-Levenberg Algorithm with R Package `marqLevAlg`"
date = "2021-12-01"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["V Philipps", "<u>**BP Hejblum**</u>", "M Prague", "D Commenges", "C Proust-Lima"]
# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference proceedings
# 2 = Journal
# 3 = Work in progress
# 4 = Technical report
# 5 = Book
# 6 = Book chapter
publication_types = ["2"]

# Publication name and optional abbreviated version.
publication = "*The R journal*, 13(2):365-379, 2021"
publication_short = "*The R journal*, 13(2):365-379, 2021"

doi ="10.32614/RJ-2021-089"

# Abstract and optional shortened version.
abstract = "Optimization is an essential task in many computational problems. In statistical modelling for instance, in the absence of analytical solution, maximum likelihood estimators are often retrieved using iterative optimization algorithms. R software already includes a variety of optimizers from general-purpose optimization algorithms to more specific ones. Among Newton-like methods which have good convergence properties, the Marquardt-Levenberg algorithm (MLA) provides a particularly robust algorithm for solving optimization problems. Newton-like methods generally have two major limitations: (i) convergence criteria that are a little too loose, and do not ensure convergence towards a maximum, (ii) a calculation time that is often too long, which makes them unusable in complex problems. We propose in the marqLevAlg package an efficient and general implementation of a modified MLA combined with strict convergence criteria and parallel computations. Convergence to saddle points is avoided by using the relative distance to minimum/maximum criterion (RDM) in addition to the stability of the parameters and of the objective function. RDM exploits the first and second derivatives to compute the distance to a true local maximum. The independent multiple evaluations of the objective function at each iteration used for computing either first or second derivatives are called in parallel to allow a theoretical speed up to the square of the number of parameters. We show through the estimation of 7 relatively complex statistical models how parallel implementation can largely reduce computational time. We also show through the estimation of the same model using 3 different algorithms (BFGS of optim routine, an E-M, and MLA) the superior efficiency of MLA to correctly and consistently reach the maximum."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

# Links (optional).
url_pdf = "https://rjournal.github.io/archive/2021/RJ-2021-089/RJ-2021-089.pdf"
url_preprint = "https://arxiv.org/abs/2009.03840"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
url_custom = [{name = "R code", url = "https://CRAN.R-project.org/package=marqLevAlg"},{name = "Article", url = "https://journal.r-project.org/articles/RJ-2021-089/"}]


# Does the content use math formatting?
math = true

# Does the content use source code highlighting?
highlight = false

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = ""

+++
