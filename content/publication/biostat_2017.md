+++
title = "Variance component score test for time-course gene set analysis of longitudinal RNA-seq data"
date = "2017-10-01"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["D Agniel", "<u>**BP Hejblum**</u>"]

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
publication = "*Biostatistics*, 18(4):589–604"
publication_short = "*Biostatistics*, 18(4):589–604"

doi ="10.1093/biostatistics/kxx005"

# Abstract and optional shortened version.
abstract = "As gene expression measurement technology is shifting from microarrays to sequencing, the statistical tools available for their analysis must be adapted since RNA-seq data are measured as counts. It has been proposed to model RNA-seq counts as continuous variables using nonparametric regression to account for their inherent heteroscedasticity. In this vein, we propose tcgsaseq, a principled, model-free, and efficient method for detecting longitudinal changes in RNA-seq gene sets defined a priori. The method identifies those gene sets whose expression varies over time, based on an original variance component score test accounting for both covariates and heteroscedasticity without assuming any specific parametric distribution for the (transformed) counts. We demonstrate that despite the presence of a nonparametric component, our test statistic has a simple form and limiting distribution, and both may be computed quickly. A permutation version of the test is additionally proposed for very small sample sizes. Applied to both simulated data and two real datasets, tcgsaseq is shown to exhibit very good statistical properties, with an increase in stability and power when compared to state-of-the-art methods ROAST (rotation gene set testing), edgeR, and DESeq2, which can fail to control the type I error under certain realistic settings. We have made the method available for the community in the R package *tcgsaseq*."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Links (optional).
url_pdf = "https://academic.oup.com/biostatistics/article-pdf/18/4/589/24331653/kxx005.pdf"
url_preprint = "https://arxiv.org/abs/1605.02351"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
url_custom = [{name = "Article", url = "https://doi.org/10.1093/biostatistics/kxx005"}, {name = "R package", url = "https://CRAN.R-project.org/package=tcgsaseq"}]

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
