+++
title = "PheProb: probabilistic phenotyping using diagnosis codes to improve power for genetic association studies"
date = "2018-05-17"



# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["JA Sinnott", "F Cai", "S Yu", "<u>**BP Hejblum**</u>", "C Huong", "IS Kohane", "KP Liao"]
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
publication = "*Journal of the American Medical Informatics Association*, in press"
publication_short = "*JAMIA*, in press"

doi ="10.1093/jamia/ocy056"

# Abstract and optional shortened version.
abstract = "**Objective:** Standard approaches for large scale phenotypic screens using electronic health record (EHR) data apply thresholds, such as ≥2 diagnosis codes, to define subjects as having a phenotype. However, the variation in the accuracy of diagnosis codes can impair the power of such screens. Our objective was to develop and evaluate an approach which converts diagnosis codes into a probability of a phenotype (PheProb). We hypothesized that this alternate approach for defining phenotypes would improve power for genetic association studies. **Methods:** The PheProb approach employs unsupervised clustering to separate patients into 2 groups based on diagnosis codes. Subjects are assigned a probability of having the phenotype based on the number of diagnosis codes. This approach was developed using simulated EHR data and tested in a real world EHR cohort. In the latter, we tested the association between low density lipoprotein cholesterol (LDL-C) genetic risk alleles known for association with hyperlipidemia and hyperlipidemia codes (ICD-9 272.X). PheProb and thresholding approaches were compared. **Results:** Among n=1462 subjects in the real world EHR cohort, the threshold-based p-values for association between the genetic risk score (GRS) and hyperlipidemia were 0.126 (≥1 code), 0.123 (≥2 codes), and 0.142 (≥3 codes). The PheProb approach produced the expected significant association between the GRS and hyperlipidemia: p=.001. **Conclusions:** PheProb improves statistical power for association studies relative to standard thresholding approaches by leveraging information about the phenotype in the billing code counts. The PheProb approach has direct applications where efficient approaches are required, such as in Phenome-Wide Association Studies."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

# Links (optional).
url_pdf = ""
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
url_custom = [{name = "Article", url = "https://doi.org/10.1093/jamia/ocy056"}]

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
