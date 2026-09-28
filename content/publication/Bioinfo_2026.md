+++
title = "When Less Is Not More: DICEPro Mitigates the Impact of Incomplete Reference Matrices on Cellular Frequency Deconvolution"
date = "2026-06-22"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Ba Kalidou", "R Thiébaut", "X Hinaut", "<u>**BP Hejblum**</u>"]
# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference proceedings
# 2 = Journal
# 3 = Work in progress
# 4 = Technical report
# 5 = Book
# 6 = Book chapter
# 7 = Preprint
publication_types = ["7"]

# Publication name and optional abbreviated version.
publication = "*bioRxiv* 2026.06.17.732876"
publication_short = "*bioRxiv* 2026.06.17.732876"

doi ="10.64898/2026.06.17.732876"

# Abstract and optional shortened version.
abstract = "Cellular deconvolution aims to estimate the frequencies of different cell populations from gene expression measurements in a biological sample. Supervised approaches, such as CIBERSORTx and DISSECT, critically depend on the reference signature matrix, which encodes the gene expression profiles of cell-types based on prior knowledge. Despite numerous deconvolution methods, the impact of missing cell populations in the reference matrix remains understudied. Here, we evaluate the robustness of state-of-the-art deconvolution approaches using simulations based on real dataset examples combined with statistical modeling, validated against published data, and multiple real benchmark datasets. Results show that deconvolution performance remains stable when the reference matrix includes most cell-types, but declines sharply as the matrix becomes incomplete, especially for abundant cell populations. To address the limitations of incomplete reference matrices, we introduce DICEPro, an optimization-based framework designed to enhance existing deconvolution methods. By systematically adjusting the reference signatures, DICEPro better accounts for missing or underrepresented cell populations, leading to improved precision and robustness. We show that DICEPro consistently boosts deconvolution performance across both simulated datasets, derived from real data examples, and multiple real biological datasets, offering a practical solution when standard methods are hindered by incomplete references."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

# Links (optional).
url_pdf = "https://www.biorxiv.org/content/10.64898/2026.06.17.732876v1.full.pdf"
url_preprint = "https://doi.org/10.64898/2026.06.17.732876"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
#url_custom = [{name = "Article", url = ""}, {name = "R package", url = "https://CRAN.R-project.org/package=dicepro"}]


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
