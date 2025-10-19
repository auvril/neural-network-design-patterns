# Residual Connection

---
Title: Residual Connection
Also Known As: Skip Connection, Identity Shortcut
Category: Structural
Status: draft
Last updated: 2025-10-19

## Intent

Facilitate training of deep networks by enabling gradient flow through identity mappings, mitigating vanishing effects.

## Motivation

- Deep stacks of nonlinear layers degrade signal propagation; optimization stalls.
- Introducing identity shortcuts preserves representational fidelity while allowing residual refinement.
- Example: ResNet blocks learn residual F(x) added to x, enabling >100 layer training.

## Applicability

- Use when depth causes degradation (training loss plateau) or optimization instability.
- Avoid for layers where additive merge breaks semantics (e.g., concatenative sequence joins) or mismatched shapes without projection.

## Structure

- Diagram: TODO: diagram(residual-connection)
- Core equation: y = x + F(x)
- If shape mismatch: y = P(x) + F(x) where P is a projection (1x1 conv / linear)

## Participants

- Producer: Upstream activation x
- Residual Function: F (parameterized transformation)
- Projection (optional): P aligns dimensions when needed
- Consumer: Downstream activation y

## Collaborations

1. Forward: compute residual r = F(x); optionally p = P(x); y = (p or x) + r
1. Backward: gradients split through addition; identity path ensures non-zero gradient.

## Consequences

- Benefits: Improved gradient flow, enables deeper architectures, eases optimization.
- Trade-offs: Additional memory for intermediate activations; may mask need for architectural simplification.
- Risks: Uncontrolled residual magnitude can destabilize (recommend normalization or scaling in extreme depth).

## Implementation Notes

- Place normalization (BatchNorm/LayerNorm) inside F before addition.
- Use projection only when channel or spatial dimensions differ.
- Initialize F near zero (e.g., last BN gamma=0) for stable early training.

## Pseudocode (PyTorch-like)

```python
class ResidualConnection(nn.Module):
    def __init__(self, fn: nn.Module, projection: Optional[nn.Module] = None):
        super().__init__()
        self.fn = fn
        self.proj = projection
    def forward(self, x):
        identity = x if self.proj is None else self.proj(x)
        return identity + self.fn(x)
```

## Known Uses

- ResNet (image classification) [ResNet2016]
- Transformer sublayers (post-attention and MLP blocks) [Transformer2017]

## Related Patterns

- Highway Network (gated variant)
- Dense Connection (cumulative concatenation instead of addition)

## Testing & Evaluation

- Ablation: remove residual; observe degraded accuracy or slower convergence.
- Metrics: training loss trajectory, final accuracy, gradient norm distribution.

## References

- [ResNet2016] Deep Residual Learning for Image Recognition.
- [Transformer2017] Attention Is All You Need.

---
Authoring tip: Keep residual functions narrow if parameter budget constrained; consider scaling residual (0.5 * F(x)) in very deep networks.
