# AGEC 6403 Study App

A phone-friendly study app for **AGEC 6403 Advanced Production** (Oklahoma State University, Fall 2026).

**Open the app:** https://shlesh77.github.io/agec6403-study-app/

## What is inside

- 11 chapters following the syllabus: data generating processes, expected-profit maximization, linear and stochastic plateau functions, likelihood tests and SAS output, Bayesian estimation and Stan, expected utility and certainty equivalents, mean–variance and stochastic dominance (FSD, SSD, SDRF, SERF), numerical integration and direct expected-utility maximization, research writing, and a preview of spatial, frontier and duality topics
- Worked examples, linked YouTube explanations, quizzes, flashcards and one-line review questions at the end of every chapter
- 8 interactive labs: stochastic plateau optimal nitrogen, newsvendor and value of information, Bayesian updating, utility/CE/risk premium, risk ranking (E-V, FSD, SSD, SERF), Gaussian quadrature vs Monte Carlo, quadratic optimum, E(PY)
- Exam prep checklist and glossary
- Progress, notes and personal flashcards are saved in your own browser only

These are personal study notes compiled from lectures (August 31 to October 30, 2026) and assignments. They are not official course materials.

## Editing

The app is built from the parts in `src/`. Edit a part, then run:

```bash
bash build.sh
```

That rebuilds `index.html` (the GitHub Pages site) and `AGEC6403_Study_App.html`. See [HOW_TO_EDIT.md](HOW_TO_EDIT.md) for the block format for lessons, quiz questions, videos, flashcards and chapters.
