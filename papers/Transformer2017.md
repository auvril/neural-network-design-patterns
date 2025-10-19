# Transformer2017 Verification

Key: [Transformer2017]
Title: Attention Is All You Need
Authors: Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Lukasz Kaiser, Illia Polosukhin
Venue: NeurIPS 2017 (original arXiv:1706.03762)
DOI: 10.48550/arXiv.1706.03762
URL: <https://arxiv.org/abs/1706.03762>
PDF: <https://arxiv.org/pdf/1706.03762>

## Abstract (excerpt)

"We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely ... superior in quality while being more parallelizable and requiring significantly less time to train."

## Claim Verification Against `references.md`

Reference entry claim: Introduces the Transformer architecture. Verified; the paper replaces recurrent and convolutional sequence modeling components with multi-head self-attention + position-wise feed-forward layers and positional encoding.

Verified Points:

- Removes recurrence and convolutions; uses stacked encoder-decoder attention blocks.
- Introduces scaled dot-product attention and multi-head attention.
- Demonstrates state-of-the-art BLEU on WMT14 En-De (28.4) and En-Fr (41.8 single model).
- Shows parallelization advantages leading to faster training.

No correction needed.

## Notable Contributions

- Architectural pattern: attention-only encoder-decoder.
- Multi-head attention enabling different representation subspaces.
- Positional encodings (sinusoidal) for order information without recurrence.
- Layer normalization + residual connections integration.

## Follow-on Patterns

- Basis for modern large language models (GPT-series, BERT, T5).
- Inspired variants: Vision Transformer (ViT), Perceiver, efficient attention patterns.

## BibTeX

```bibtex
@article{VaswaniSPUJGKP17,
  author    = {Ashish Vaswani and Noam Shazeer and Niki Parmar and Jakob Uszkoreit and Llion Jones and Aidan N. Gomez and Lukasz Kaiser and Illia Polosukhin},
  title     = {Attention Is All You Need},
  journal   = {CoRR},
  volume    = {abs/1706.03762},
  year      = {2017},
  url       = {http://arxiv.org/abs/1706.03762},
  eprint    = {1706.03762},
  timestamp = {Mon, 12 Jun 2017},
}
```
