+++
title = "ATLAS: An automated association test using probabilistically linked health records with application to genetic studies"
date = "2021-07-23"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["HG Zhang&#42;", "<u>**BP Hejblum**&#42;</u>", "G Weber", "N Palmer", "S Churchill", "P Szolovitz", "S Murphy", "K Liao", "I Kohane", "T Cai"]
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
publication = "*Journal of the American Medical Informatics Association*, in press, 2021"
publication_short = "*Journal of the American Medical Informatics Association*, in press, 2021"

doi ="10.1101/2021.05.02.21256490"

# Abstract and optional shortened version.
abstract = "**Objective:** Large amounts of health data are becoming available for biomedical research. Synthesizing information across databases with no gold standard mappings between records may provide a more complete picture of patient health and enable novel research studies. To do so, researchers may probabilistically link databases and conduct inference using the linked data. However, previous inference methods for linked data are constrained to specific linkage settings and exhibit low power. Here, we present ATLAS, an automated, flexible, and robust association testing algorithm for probabilistically linked data. **Materials and Methods:** Missing variables are imputed at various thresholds using a weighted average method that propagates uncertainty from the linkage process. Next, an estimated effect size is obtained using a generalized linear model. ATLAS then conducts the threshold combination test by optimally combining p-values obtained from data imputed at varying thresholds using Fisher's method and perturbation resampling. **Results:** In simulations, ATLAS controls for type I error and exhibits high power compared to previous methods. In a real-world application study, incorporation of linked data-enabled analyses using ATLAS yielded two additional significant associations between rheumatoid arthritis genetic risk score and biomarkers. Discussion The ATLAS weighted average imputation weathers false matches and increases contribution of true matches to mitigate linkage error induced bias. ATLAS’ threshold combination test avoids arbitrarily choosing a threshold to rule a match, thus automating linked data-enabled analyses and preserving power.  **Conclusion:** ATLAS promises to enable novel and powerful research studies using linked data to capitalize on all available data sources."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Links (optional).
url_pdf = ""
url_preprint = "https://doi.org/10.1101/2021.05.02.21256490"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
url_custom = [{name = "R package", url = "https://CRAN.R-project.org/package=ludic"}#, {name = "Article", url = "https://doi.org/10.1613/jair.1.12588"}
]


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
