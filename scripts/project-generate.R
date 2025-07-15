# Project Generator

create_biogeo_quarto_project <- function(path = "biogeo-signals") {
  dirs <- c(
    "", "03-methods", "04-case_studies", "appendix", 
    "data/alsea", "data/hj_andrews", "data/loon_lake", 
    "scripts", "scripts/ig_sde",
    "plots/psd_shapes", "plots/entropy_curves", "plots/manifold_mappings"
  )
  
  files <- list(
    "_quarto.yml" = 'project:\n  type: book\nbook:\n  title: "Biogeochemical Signals of Watershed Response to Disturbance"\n  author: "Francisco J. Guerrero"\n  chapters:\n    - index.qmd\n    - 00-preface.qmd\n    - 01-introduction.qmd\n    - 02-theory.qmd\n    - part: "Methods"\n      chapters:\n        - 03-methods/03a-psd_simulation.qmd\n        - 03-methods/03b-entropy_divergence.qmd\n        - 03-methods/03c-metrics_explained.qmd\n        - 03-methods/03d-stat_tests.qmd\n        - 03-methods/03e-sde_fpk_modeling.qmd\n    - part: "Case Studies"\n      chapters:\n        - 04-case_studies/04a-alsea.qmd\n        - 04-case_studies/04b-hj_andrews.qmd\n        - 04-case_studies/04c-loon_lake.qmd\n    - 05-synthesis.qmd\n    - 06-conclusion.qmd\n    - part: "Appendices"\n      chapters:\n        - appendix/a-math_foundations.qmd\n        - appendix/b-entropy_algorithms.qmd\n        - appendix/c-code_snippets.qmd',
    
    "03-methods/03e-sde_fpk_modeling.qmd" = "# SDE and FPK Modeling\n\n## Motivation\n\nThis section illustrates how observing only probability distributions—without knowing the governing dynamics—can benefit from an information geometry approach.\n\n## Simple SDE\n\n- Brownian motion, OU process\n- IG metrics over trajectories\n\n## Toward FPK\n\n- Use KDE or histogram to estimate PDFs\n- FPK as evolution of distribution\n- Limits of inference when dynamics are hidden",
    
    "scripts/ig_sde/simulate_sde.R" = "# Simulate simple SDEs (e.g., dX = -theta*X dt + sigma dW)\n\n# Use Euler-Maruyama for now",
    "scripts/ig_sde/sde_to_pdf.R" = "# Convert SDE paths to estimated probability distributions\n# Suggest: KDE or histogram per time slice",
    "scripts/ig_sde/compute_ig_metrics.R" = "# Compute divergence and entropy over SDE-derived PDFs\n# Try Bhattacharyya, Fisher-Rao, or Wasserstein",
    "scripts/ig_sde/fokker_planck_solver.R" = "# Placeholder: FPK PDE solver (e.g., finite differences)\n# For now, define toy setup and pseudocode",
    
    # leave other content from previous version
    "index.qmd" = "# Biogeochemical Signals of Watershed Response to Disturbance\n\nWelcome to this conceptual and analytical exploration using information geometry.",
    "00-preface.qmd" = "# Preface\n\nThis book explores how watershed signals encode reorganization via probabilistic signal structure.",
    "01-introduction.qmd" = "# Introduction\n\nWe begin with a shift in perspective: from deterministic outputs to shape-preserving signal analysis.",
    "02-theory.qmd" = "# Theoretical Framework\n\n## From Narrative to Geometry\n\n- Signal as distribution\n- Manifold of constraints\n- Curvature, divergence, entropy",
    "03-methods/03a-psd_simulation.qmd" = "# Simulating PSDs\n\nCode and methods for core simulation and PSD shape control.",
    "03-methods/03b-entropy_divergence.qmd" = "# Entropy and Divergence Metrics\n\nBhattacharyya, Fisher-Rao, Wasserstein explained.",
    "03-methods/03c-metrics_explained.qmd" = "# Understanding the Metrics\n\nHow to interpret metric signals and what they tell us about the system.",
    "03-methods/03d-stat_tests.qmd" = "# Statistical Tests\n\nUsing multimodality and shape change tests to detect signal transitions.",
    "04-case_studies/04a-alsea.qmd" = "# Alsea River Case Study",
    "04-case_studies/04b-hj_andrews.qmd" = "# H.J. Andrews Case Study",
    "04-case_studies/04c-loon_lake.qmd" = "# Loon Lake Core Case Study",
    "05-synthesis.qmd" = "# Cross-Site Synthesis\n\nWhat do signal trajectories reveal across basins?",
    "06-conclusion.qmd" = "# Conclusion\n\nFrom signal shape to constraint inference: where next?",
    "appendix/a-math_foundations.qmd" = "# Appendix A: Mathematical Foundations\n\nRiemannian geometry, probability simplex, geodesics.",
    "appendix/b-entropy_algorithms.qmd" = "# Appendix B: Entropy Algorithms\n\nImplementation details and pseudocode.",
    "appendix/c-code_snippets.qmd" = "# Appendix C: Code Snippets\n\nReusable code blocks for metrics and figures.",
    "bibliography.bib" = ""
  )
  
  # Create directories
  for (d in dirs) dir.create(file.path(path, d), recursive = TRUE, showWarnings = FALSE)
  
  # Write files
  for (f in names(files)) {
    writeLines(files[[f]], con = file.path(path, f))
  }
  
  message("Enhanced project created at: ", normalizePath(path))
}

create_biogeo_quarto_project("biogeo-signals") # Create the project structure and files
#' @description This function creates a structured Quarto project for the Biogeochemical Signals of Watershed Response to Disturbance book.
