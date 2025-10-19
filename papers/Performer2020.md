# Performer2020 Verification

Key: [Performer2020]
Title: Rethinking Attention with Performers
Authors: Krzysztof Choromanski, Valerii Likhosherstov, David Dohan, Xingyou Song, Andreea Gane, Tamás Sarlos, Peter Hawkins, Jared Davis, Afroz Mohiuddin, Lukasz Kaiser, David Belanger, Lucy Colwell, Adrian Weller
Venue: ICLR 2021 (arXiv:2009.14794, submitted 2020)
DOI: (ICLR) / arXiv:2009.14794
URL: <https://arxiv.org/abs/2009.14794>
PDF: <https://arxiv.org/pdf/2009.14794>

## Abstract (excerpt)

"Performers approximate softmax attention using Fast Attention Via positive Orthogonal Random features (FAVOR+) enabling linear time & space complexity w.r.t. sequence length while preserving attention quality."

## Claim Verification Against `references.md`

Reference entry claim (Performer2020) implies efficient attention; verified: Introduces FAVOR+ random feature mechanism yielding unbiased / low-variance estimator of softmax attention enabling scalable transformer variants.

Verified Points:

- FAVOR+ positive orthogonal random features approximate softmax kernel.
- Achieves linear complexity O(n) per attention head with respect to sequence length n.
- Provides theoretical grounding (unbiased estimator under conditions) and empirical results on long sequences.

No correction needed.

## Notable Contributions

- Kernel feature map approach to attention approximation avoiding sparsity/low-rank assumptions.
- Orthogonal random features for variance reduction.
- General framework applicable to other kernels (Gaussian, softmax variants).

## Follow-on Patterns

- Inspired efficient attention designs (e.g., linear transformers, fast kernel-based attention) and integration in long-sequence modeling libraries.

## BibTeX

```bibtex
@inproceedings{choromanski2021performer,
  title     = {Rethinking Attention with Performers},
  author    = {Choromanski, Krzysztof and Likhosherstov, Valerii and Dohan, David and Song, Xingyou and Gane, Andreea and Sarlos, Tam{\'a}s and Hawkins, Peter and Davis, Jared and Mohiuddin, Afroz and Kaiser, Lukasz and Belanger, David and Colwell, Lucy and Weller, Adrian},
  booktitle = {International Conference on Learning Representations},
  year      = {2021},
  url       = {https://arxiv.org/abs/2009.14794}
}
```
