+++
title = "Distribution-free complex hypothesis testing for single-cell RNA-seq differential expression analysis"
date = "2021-05-23"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["M Gauthier", "D Agniel", "R Thiébaut", "<u>**BP Hejblum**</u>"]
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
publication = "*bioRxiv* 2021.05.21.445165"
publication_short = "*bioRxiv* 2021.05.21.445165"

doi ="10.1101/2021.05.21.445165"

# Abstract and optional shortened version.
abstract = "State-of-the-art methods for single-cell RNA-seq (scRNA-seq) Differential Expression Analysis (DEA) often rely on strong distributional assumptions that are difficult to verify in practice. Furthermore, while the increasing complexity of clinical and biological single-cell studies calls for greater tool versatility, the majority of existing methods only tackle the comparison between two conditions. We propose a novel, distribution-free, and flexible approach to DEA for single-cell RNA-seq data. This new method, called ccdf, tests the association of each gene expression with one or many variables of interest (that can be either continuous or discrete), while potentially adjusting for additional covariates. To test such complex hypotheses, ccdf uses a conditional independence test relying on the conditional cumulative distribution function, estimated through multiple regressions. We provide the asymptotic distribution of the ccdf test statistic as well as a permutation test (when the number of observed cells is not sufficiently large). ccdf substantially expands the possibilities for scRNA-seq DEA studies: it obtains good statistical performance in various simulation scenarios considering complex experimental designs (i.e. beyond the two condition comparison), while retaining competitive performance with state-of-the-art methods in a two-condition benchmark."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

# Links (optional).
url_pdf = "https://www.biorxiv.org/content/10.1101/2021.05.21.445165v1.full.pdf"
url_preprint = "https://www.biorxiv.org/content/10.1101/2021.05.21.445165"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
#url_custom = [{name = "Article", url = "https://doi.org/10.1101/2021.05.21.445165"}, {name = "R package", url = "https://CRAN.R-project.org/package=ccdf"}]


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
