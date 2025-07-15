# 📁 Project Structure: `biogeo-signals`

This file documents the folder and file layout for the Quarto Book project:
**"Biogeochemical Signals of Watershed Response to Disturbance"**
with emphasis on signal analysis and information geometry (IG) applications.

---

## Root Directory

```
biogeo-signals/
├── _quarto.yml                  # Quarto book configuration
├── bibliography.bib            # BibTeX references
├── index.qmd                   # Homepage of the book
├── 00-preface.qmd              # Preface with framing remarks
├── 01-introduction.qmd         # Introduction and rationale
├── 02-theory.qmd               # Core concepts and formal framework
```

## Chapter 3 – Methods

```
├── 03-methods/
│   ├── 03a-psd_simulation.qmd      # Simulated PSDs and shape controls
│   ├── 03b-entropy_divergence.qmd  # Entropy/divergence metric application
│   ├── 03c-metrics_explained.qmd   # Intuition and geometric interpretation
│   ├── 03d-stat_tests.qmd          # Multimodality and shape transition tests
│   └── 03e-sde_fpk_modeling.qmd    # SDE simulation and FPK framing
```

## Chapter 4 – Case Studies

```
├── 04-case_studies/
│   ├── 04a-alsea.qmd
│   ├── 04b-hj_andrews.qmd
│   └── 04c-loon_lake.qmd
```

## Chapter 5 & 6 – Integration

```
├── 05-synthesis.qmd             # Cross-site signal synthesis
├── 06-conclusion.qmd            # Final insights and next steps
```

## Appendices

```
├── appendix/
│   ├── a-math_foundations.qmd      # Geometry, manifolds, divergence
│   ├── b-entropy_algorithms.qmd    # Metric algorithms, pseudocode
│   └── c-code_snippets.qmd         # Reusable code for figures/metrics
```

## Data Directory

```
├── data/
│   ├── alsea/
│   ├── hj_andrews/
│   └── loon_lake/
```

## Scripts Directory

```
├── scripts/
│   ├── core_simulator.R
│   ├── generate_scenarios.R
│   ├── entropy_metrics.R
│   └── ig_sde/
│       ├── simulate_sde.R          # Euler–Maruyama SDE solvers
│       ├── sde_to_pdf.R            # KDE or histogram PDF estimation
│       ├── compute_ig_metrics.R    # IG metrics: Bhattacharyya, Wasserstein, etc.
│       └── fokker_planck_solver.R  # Placeholder for FPK solver (planned)
```

## Plots Directory

```
├── plots/
│   ├── psd_shapes/
│   ├── entropy_curves/
│   └── manifold_mappings/
```

---

Use this file as the canonical reference for structuring content, guiding implementation, and navigating your Quarto project.

