# PromptTuning2021 Verification

Key: [PromptTuning2021]
Title: The Power of Scale for Parameter-Efficient Prompt Tuning
Authors: Brian Lester, Rami Al-Rfou, Noah Constant
Venue: EMNLP 2021 (arXiv:2104.08691)
DOI: 10.18653/v1/2021.emnlp-main.243
URL: <https://arxiv.org/abs/2104.08691>
PDF: <https://arxiv.org/pdf/2104.08691>

## Abstract (excerpt)

"Prompt tuning learns soft prompt embeddings prepended to inputs, conditioning a frozen language model to perform downstream tasks. Scaling model size improves prompt tuning performance toward parity with full fine-tuning."

## Claim Verification Against `references.md`

Reference entry claim (PromptTuning2021) is accurate: introduces soft prompt tuning focusing on scaling effects for parameter efficiency.

Verified Points:

- Trains only prompt vectors; model weights frozen.
- Larger base models reduce performance gap vs full fine-tuning.
- Achieves parameter-efficient adaptation across SuperGLUE tasks.

No correction needed.

## Notable Contributions

- Demonstrated scaling law benefits specifically for prompt tuning.
- Provided empirical comparison to alternative parameter-efficient strategies.
- Soft prompt design requiring minimal parameter count relative to adapters.

## Follow-on Patterns

- Influenced broader prompt engineering and soft prompt methods (P-Tuning v2, Prefix/P-Tuning hybrids).
- Adoption in PEFT libraries enabling rapid task adaptation.

## BibTeX

```bibtex
@inproceedings{lester-etal-2021-power,
  title     = {The Power of Scale for Parameter-Efficient Prompt Tuning},
  author    = {Lester, Brian and Al-Rfou, Rami and Constant, Noah},
  booktitle = {Proceedings of the 2021 Conference on Empirical Methods in Natural Language Processing},
  pages     = {3045--3059},
  year      = {2021},
  publisher = {Association for Computational Linguistics},
  doi       = {10.18653/v1/2021.emnlp-main.243},
  url       = {https://aclanthology.org/2021.emnlp-main.243/}
}
```
