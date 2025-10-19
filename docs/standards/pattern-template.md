# Pattern Template (GoF-style, Deep Learning specific)

Use this template for every pattern entry. Keep voice concise and design‑oriented; include equations and minimal workable code where it clarifies intent.

---
Title: <Pattern Name>
Also Known As: <Synonyms>
Category: <Creational | Structural | Interface | Behavioral | Optimization | Representation | Reasoning | System>
Status: draft
Last updated: <YYYY-MM-DD>

## Intent

What problem does this pattern solve? State the goal in one sentence.

## Motivation

- Context and forces that lead to the pattern
- Example scenario(s) that make the problem vivid

## Applicability

- When to use
- When not to use

## Structure

- Diagram: block graph of modules and interfaces (TODO)
- Core equations and shapes

## Participants

- Producer(s) — upstream modules providing inputs
- Bridge/Interface — the adapter or linking mechanism
- Consumer — downstream module(s)
- Controller/Context — optional conditioning signal

## Collaborations

How information, gradients, and (if relevant) parameters flow among participants.

## Consequences

- Benefits
- Trade‑offs and costs (compute, memory, latency)
- Risks and pitfalls

## Implementation Notes

- Initialization and normalization placement
- Dimensionality and shape constraints
- Regularization and stability tricks
- Parameterization choices and defaults

## Pseudocode (PyTorch‑like)

```python
class PatternName(nn.Module):
    def __init__(self, ...):
        super().__init__()
        # TODO: modules
    def forward(self, x, context=None):
        # TODO: data/gradient flow
        return y
```

## Known Uses

- Canonical architectures and citations

## Related Patterns

- Variants, compositions, oppositions

## Testing & Evaluation

- What to measure; typical ablations

## References

- Key papers, docs, or implementations (centralize entries in `docs/reference/references.md`)

---

Authoring tip: Prefer small, self‑contained examples and cross‑link to glossary terms instead of redefining them.
