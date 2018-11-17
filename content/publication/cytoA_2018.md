+++
title = "cytometree: a binary tree algorithm for automatic gating in cytometry analysis"
date = "2018-10-02"



# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["D Commenges", "C Alkhassim", "R Gottardo", "<u>**BP Hejblum**</u>", "R Thiébaut"]
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
publication = "*Cytometry Part A*, 93(11):1132-1140"
publication_short = "*Cytom. A*, 93(11):1132-1140"

doi =""

# Abstract and optional shortened version.
abstract = "Flow cytometry is a powerful technology that allows the high‐throughput quantification of dozens of surface and intracellular proteins at the single‐cell level. It has become the most widely used technology for immunophenotyping of cells over the past three decades. Due to the increasing complexity of cytometry experiments (more cells and more markers), traditional manual flow cytometry data analysis has become untenable due to its subjectivity and time‐consuming nature. We present a new unsupervised algorithm called “cytometree” to perform automated population identification (aka gating) in flow cytometry. cytometree is based on the construction of a binary tree, the nodes of which are subpopulations of cells. At each node, the marker distributions are modeled by mixtures of normal distributions. Node splitting is done according to a model selection procedure based on a normalized difference of Akaike information criteria between two competing models. Post‐processing of the tree structure and derived populations allows us to complete the annotation of the populations. The algorithm is shown to perform better than the state‐of‐the‐art unsupervised algorithms previously proposed on panels introduced by the Flow Cytometry: Critical Assessment of Population Identification Methods project. The algorithm is also applied to a T‐cell panel proposed by the Human Immunology Project Consortium (HIPC) program; it also outperforms the best unsupervised open‐source available algorithm while requiring the shortest computation time. © 2018 International Society for Advancement of Cytometry"
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

# Links (optional).
url_pdf = ""
url_preprint = "https://www.biorxiv.org/content/early/2018/05/31/335554"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
url_custom = [{name = "Article", url = "https://onlinelibrary.wiley.com/doi/abs/10.1002/cyto.a.23601"}, {name = "R package", url = "https://CRAN.R-project.org/package=cytometree"}]

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
