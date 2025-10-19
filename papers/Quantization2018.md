# [Quantization2018] Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference

**Key**: Quantization2018
**Title**: Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference
**Authors**: Benoit Jacob, Skirmantas Kligys, Bo Chen, Menglong Zhu, Matthew Tang, Andrew Howard, Hartwig Adam, Dmitry Kalenichenko
**Year / Venue**: 2018 (CVPR)
**DOI**: <https://doi.org/10.48550/arXiv.1712.05877>
**Primary URL**: <https://arxiv.org/abs/1712.05877>
**PDF URL**: <https://arxiv.org/pdf/1712.05877>

## Abstract (Excerpt)

We propose a quantization scheme that allows inference to be carried out using integer-only arithmetic, which can be implemented more efficiently than floating point inference on commonly available integer-only hardware. We also co-design a training procedure to preserve end-to-end model accuracy post quantization.

## Claim Verification

The reference states this work introduces a practical integer-only inference path with co-designed quantization-aware training preserving accuracy. The abstract confirms integer-only arithmetic inference and a training procedure maintaining accuracy, validating the claim fully.

## Notable Contributions

1. Detailed integer-only quantization pipeline (scales, zero-points) for activations and weights.
1. Training approach incorporating fake quantization nodes for accuracy retention.
1. Demonstrated latency/efficiency gains on MobileNets for ImageNet & COCO with minimal accuracy loss.
1. Provided reproducible specification influencing later frameworks (e.g., TensorFlow Lite quantization).

## Follow-on / Related Patterns

- Post-training quantization & quantization-aware training frameworks (QAT).
- Mixed-precision strategies (combining int8 with higher precision layers where needed).
- Distillation + quantization combined pipelines for further compression.

## Implementation Notes (Pattern Perspective)

- Participants: Calibration Data, Quantization Observer (scale/zero-point estimator), Fake Quantization Ops, Integer Inference Runtime.
- Invariants: Symmetric/asymmetric mapping maintains representable range; rounding strategy stable across platforms.
- Edge Cases: Outlier activation ranges, per-channel weight quantization vs per-tensor trade-offs.

## BibTeX

```bibtex
@inproceedings{Jacob2018IntegerOnly,
  title={Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference},
  author={Jacob, Benoit and Kligys, Skirmantas and Chen, Bo and Zhu, Menglong and Tang, Matthew and Howard, Andrew and Adam, Hartwig and Kalenichenko, Dmitry},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  year={2018},
  doi={10.48550/arXiv.1712.05877},
  url={https://arxiv.org/abs/1712.05877}
}
```

## Verification Status

Status: ✅ Verified; abstract aligns with cited contributions.

## Notes

ArXiv preprint (2017) precedes CVPR 2018 publication; retain venue year 2018. Consider adding pseudo-code for scale/zero-point calculation in future enrichment.
