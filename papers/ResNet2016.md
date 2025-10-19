# ResNet2016 Verification

Key: [ResNet2016]
Title: Deep Residual Learning for Image Recognition
Authors: Kaiming He, Xiangyu Zhang, Shaoqing Ren, Jian Sun
Venue: CVPR 2016 (original tech report arXiv:1512.03385)
DOI: 10.48550/arXiv.1512.03385
URL: <https://arxiv.org/abs/1512.03385>
PDF: <https://arxiv.org/pdf/1512.03385>

## Abstract (excerpt)

"We present a residual learning framework to ease the training of networks that are substantially deeper than those used previously ... residual networks are easier to optimize, and can gain accuracy from considerably increased depth ... up to 152 layers ... achieve 3.57% error on ImageNet test set."

## Claim Verification Against `references.md`

Reference entry claim: "Deep Residual Learning for Image Recognition. CVPR." This matches the paper: introduces residual learning (identity shortcut connections) enabling very deep networks (e.g., 152 layers) with improved optimization and accuracy.

Verified Points:

- Residual connections (identity mapping) alleviate vanishing/exploding gradients enabling deeper architectures.
- Empirical ImageNet improvement: 3.57% top-5 test error with ensemble (reported).
- Depth (152) is 8× deeper than VGG (19) with lower computational complexity due to bottleneck design.

No correction needed.

## Notable Contributions

- Residual block formulation: F(x) + x
- Degradation problem identification (accuracy saturating/degrading with depth) and solution.
- Bottleneck architecture for very deep networks.

## Follow-on Patterns

- Widespread use in vision backbones; influenced highway networks, DenseNet (contrast), and Transformer residual pathways.

## BibTeX

(From DBLP)

```bibtex
@article{HeZRS15,
  author    = {Kaiming He and Xiangyu Zhang and Shaoqing Ren and Jian Sun},
  title     = {Deep Residual Learning for Image Recognition},
  journal   = {CoRR},
  volume    = {abs/1512.03385},
  year      = {2015},
  url       = {http://arxiv.org/abs/1512.03385},
  eprint    = {1512.03385},
  timestamp = {Thu, 10 Dec 2015},
}
```
