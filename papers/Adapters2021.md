# Adapters2021 (AdapterFusion) Verification

Key: [Adapters2021]
Title: AdapterFusion: Non-Destructive Task Composition for Transfer Learning
Authors: Jonas Pfeiffer, Aishwarya Kamath, Andreas Rücklé, Kyunghyun Cho, Iryna Gurevych
Venue: EACL 2021 (initial arXiv:2005.00247, later published)
DOI: (EACL proceedings) / arXiv:2005.00247
URL: <https://arxiv.org/abs/2005.00247>
PDF: <https://arxiv.org/pdf/2005.00247.pdf>

## Abstract (concept excerpt)

AdapterFusion introduces a fusion layer that learns to combine the outputs of multiple task-specific adapters, enabling multi-task knowledge composition without retraining base model weights, preserving non-destructive task representations.

## Claim Verification Against `references.md`

Reference entry claim groups parameter-efficient tuning methods; AdapterFusion indeed composes multiple task adapters via attention-like fusion for downstream classification tasks.

Verified Points:

- Separates adapter training (per task) from later fusion training phase.
- Non-destructive: original adapters remain unchanged; fusion learns combination.
- Improves performance over single adapter baselines on multiple NLP tasks.

No correction needed.

## Notable Contributions

- Two-stage training: independent adapter extraction then fusion combination.
- Attention-based fusion layer over adapter outputs.
- Parameter-efficient multi-task composition strategy.

## Follow-on Patterns

- Influences adapter composition research (mixture, routing, dynamic selection) and PEFT libraries (e.g., adapter-transformers frameworks).

## BibTeX

```bibtex
@inproceedings{pfeiffer-etal-2021-adapterfusion,
  title     = {AdapterFusion: Non-Destructive Task Composition for Transfer Learning},
  author    = {Pfeiffer, Jonas and Kamath, Aishwarya and Rücklé, Andreas and Cho, Kyunghyun and Gurevych, Iryna},
  booktitle = {Proceedings of the 16th Conference of the European Chapter of the Association for Computational Linguistics},
  year      = {2021},
  url       = {https://arxiv.org/pdf/2005.00247.pdf}
}
```
