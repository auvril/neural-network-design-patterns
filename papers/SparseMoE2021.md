# SparseMoE2021 (Switch Transformers) Verification

Key: [SparseMoE2021]
Title: Switch Transformers: Scaling to Trillion Parameter Models with Simple and Efficient Sparsity
Authors: William Fedus, Barret Zoph, Noam Shazeer
Venue: arXiv 2021 (arXiv:2101.03961) later JMLR
DOI: (arXiv) 2101.03961
URL: <https://arxiv.org/abs/2101.03961>
PDF: <https://arxiv.org/pdf/2101.03961>

## Abstract (excerpt)

"Switch Transformers introduce a sparsely activated Mixture-of-Experts layer selecting a single expert (Switch) per token, enabling scaling to trillion-parameter models with efficient training and improved performance."

## Claim Verification Against `references.md`

Reference entry claim (SparseMoE2021) matches: Switch Transformers present efficient sparse MoE selecting one expert; improves scaling vs dense models.

Verified Points:

- Single expert routing reduces memory and communication overhead compared to top-k expert aggregation.
- Enables extremely large parameter counts while keeping FLOPs per token similar to dense baselines.
- Demonstrates improved quality per compute budget in language modeling benchmarks.

No correction needed.

## Notable Contributions

- Simplicity: one-expert routing design.
- Load balancing + regularization strategies to prevent expert collapse.
- Practical trillion-parameter scaling evidence.

## Follow-on Patterns

- Subsequent MoE work explores expert choice, load balancing (GLaM, DeepSpeed-MoE, Mixtral) and representation stability issues.

## BibTeX

```bibtex
@article{fedus2021switch,
  title   = {Switch Transformers: Scaling to Trillion Parameter Models with Simple and Efficient Sparsity},
  author  = {Fedus, William and Zoph, Barret and Shazeer, Noam},
  journal = {arXiv preprint arXiv:2101.03961},
  year    = {2021},
  url     = {https://arxiv.org/abs/2101.03961}
}
```
