# [Poincare2017] Poincaré Embeddings for Learning Hierarchical Representations

**Key**: Poincare2017
**Title**: Poincaré Embeddings for Learning Hierarchical Representations
**Authors**: Maximilian Nickel, Douwe Kiela
**Year / Venue**: 2017 (NeurIPS)
**DOI**: <https://doi.org/10.48550/arXiv.1705.08039>
**Primary URL**: <https://arxiv.org/abs/1705.08039>
**PDF URL**: <https://arxiv.org/pdf/1705.08039>

## Abstract (Excerpt)

We introduce a new approach for learning hierarchical representations of symbolic data by embedding them into hyperbolic space — or more precisely into an n-dimensional Poincaré ball. Due to the underlying hyperbolic geometry, this allows us to learn parsimonious representations of symbolic data by simultaneously capturing hierarchy and similarity.

## Claim Verification

The reference claims Poincaré Embeddings enable hierarchical representation learning leveraging hyperbolic geometry (Poincaré ball) for efficient encoding of tree-like structures. The abstract confirms usage of hyperbolic space and joint capture of hierarchy and similarity. Claim stands; no correction.

## Notable Contributions

1. Demonstrated representational efficiency of hyperbolic vs Euclidean for hierarchical data.
1. Riemannian optimization procedure (gradient updates respecting manifold geometry).
1. Empirical improvements on taxonomy reconstruction and link prediction tasks.
1. Introduced curvature-driven capacity interpretation for embedding hierarchies.

## Follow-on / Related Patterns

- Hyperbolic graph embeddings (Lorentz model, Hyperbolic GNN variants).
- Product manifolds & mixed-curvature embeddings for complex relational data.
- Hierarchy-aware recommender and knowledge graph representations.

## Implementation Notes (Pattern Perspective)

- Participants: Symbolic Entities, Poincaré Embedding Vectors, Riemannian Optimizer.
- Invariants: Norm of embeddings < 1 (inside unit ball); distance grows rapidly near boundary encoding depth.
- Edge Cases: Numerical instability near boundary; need projection after update.

## BibTeX

```bibtex
@article{Nickel2017Poincare,
  title={Poincaré Embeddings for Learning Hierarchical Representations},
  author={Nickel, Maximilian and Kiela, Douwe},
  journal={Advances in Neural Information Processing Systems},
  year={2017},
  doi={10.48550/arXiv.1705.08039},
  url={https://arxiv.org/abs/1705.08039}
}
```

## Verification Status

Status: ✅ Verified; abstract supports hierarchical + similarity capture in hyperbolic space.

## Notes

Future enrichment could add distance formula: d(u,v)=arcosh(1+2||u-v||^2/((1-||u||^2)(1-||v||^2))). Consider contrast table vs Euclidean embedding growth.
