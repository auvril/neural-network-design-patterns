# PrefixTuning2021 Verification

Key: [PrefixTuning2021]
Title: Prefix-Tuning: Optimizing Continuous Prompts for Generation
Authors: Xiang Lisa Li, Percy Liang
Venue: ACL 2021 (arXiv:2101.00190)
DOI: 10.18653/v1/2021.acl-long.353
URL: <https://arxiv.org/abs/2101.00190>
PDF: <https://arxiv.org/pdf/2101.00190>

## Abstract (excerpt)

"Prefix-tuning freezes the parameters of a pretrained language model and optimizes a task-specific continuous prefix (virtual tokens) to condition generation, achieving competitive performance while learning only a small fraction of parameters."

## Claim Verification Against `references.md`

Reference entry claim (PrefixTuning2021) is accurate: method adds trainable prefix vectors to key/value stacks of transformer layers for efficient adaptation.

Verified Points:

- Learns 0.1% (order) of parameters compared to full fine-tuning in some settings.
- Competitive or better performance under low-data regimes vs fine-tuning and adapters in generation tasks (e.g., table-to-text, summarization).
- Freezes base model; modifies representation via prepended prefix activations.

No correction needed.

## Notable Contributions

- Continuous prompt paradigm for generation tasks.
- Efficient adaptation without modifying main model weights.
- Improves extrapolation to unseen topics compared to full fine-tuning in experiments.

## Follow-on Patterns

- Complementary to prompt tuning (soft prompts) and P-Tuning; integrated in PEFT toolkits.
- Inspired architecture-level prefix insertion variants (e.g., for multi-modal tasks).

## BibTeX

```bibtex
@inproceedings{li-liang-2021-prefix,
  title     = {Prefix-Tuning: Optimizing Continuous Prompts for Generation},
  author    = {Li, Xiang Lisa and Liang, Percy},
  booktitle = {Proceedings of the 59th Annual Meeting of the Association for Computational Linguistics and the 11th International Joint Conference on Natural Language Processing (Volume 1: Long Papers)},
  pages     = {4582--4597},
  year      = {2021},
  address   = {Online},
  publisher = {Association for Computational Linguistics},
  doi       = {10.18653/v1/2021.acl-long.353},
  url       = {https://aclanthology.org/2021.acl-long.353/}
}
```
