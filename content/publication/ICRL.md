+++
title = "EpidemiOptim: A Toolbox for the Optimization of Control Policies in Epidemiological Models"
date = "2020-10-12"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["C Colas", "<u>**B Hejblum**</u>", "S Rouillon", "R Thiébaut", "P-Y Oudeyer", "C Moulin-Frier&#42;", "M Prague&#42;"]
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
publication = "*arXiv* 2010.04452"
publication_short = "*arXiv* 2010.04452"

doi =""

# Abstract and optional shortened version.
abstract = "Epidemiologists model the dynamics of epidemics in order to propose control strategies based on pharmaceutical and non-pharmaceutical interventions (contact limitation, lock down, vaccination, etc). Hand-designing such strategies is not trivial because of the number of possible interventions and the difficulty to predict long-term effects. This task can be cast as an optimization problem where state-of-the-art machine learning algorithms such as deep reinforcement learning, might bring significant value. However, the specificity of each domain -- epidemic modelling or solving optimization problem -- requires strong collaborations between researchers from different fields of expertise. This is why we introduce EpidemiOptim, a Python toolbox that facilitates collaborations between researchers in epidemiology and optimization. EpidemiOptim turns epidemiological models and cost functions into optimization problems via a standard interface commonly used by optimization practitioners (OpenAI Gym). Reinforcement learning algorithms based on Q-Learning with deep neural networks (DQN) and evolutionary algorithms (NSGA-II) are already implemented. We illustrate the use of EpidemiOptim to find optimal policies for dynamical on-off lock-down control under the optimization of death toll and economic recess using a Susceptible-Exposed-Infectious-Removed (SEIR) model for COVID-19. Using EpidemiOptim and its interactive visualization platform in Jupyter notebooks, epidemiologists, optimization practitioners and others (e.g. economists) can easily compare epidemiological models, costs functions and optimization algorithms to address important choices to be made by health decision-makers."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Links (optional).
url_pdf = "https://arxiv.org/pdf/2010.04452"
url_preprint = "https://arxiv.org/abs/2010.04452"
url_code = "https://github.com/flowersteam/EpidemiOptim"
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
# Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
#url_custom = [{name = "Article", url = "https://doi.org/10.1101/2020.04.21.20073536"}]


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