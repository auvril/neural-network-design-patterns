````markdown
# Style Guide — Neural Network Design Patterns

Version: 0.1 (Draft)
Audience: Contributors, Editors, Future Publishers

This guide defines standards to keep manuscript conversion to professional publication (print/web) low-friction while enabling collaborative authoring in Markdown.

## 1. Language & Voice

- Register: Professional, precise, explanatory; avoid marketing tone.
- Audience: Experienced ML practitioners; assume knowledge of basic deep learning (e.g., backprop, tensors).
- Person: Prefer third person; use first person plural sparingly for framing ("We observe …").
- Gender neutrality: Use they/them; avoid gendered metaphors.
- Acronyms: Spell out first mention (e.g., "Residual Neural Network (ResNet)").
- Avoid: Hype adjectives ("revolutionary", "ground‑breaking"); colloquialisms.

## 2. Terminology Consistency

- Glossary is canonical source; add new terms there before usage (`docs/reference/glossary.md`).
- Prefer singular pattern names when generic ("Adapter Layer" not "Adapters").
- Anti-pattern naming: Use concise, evocative phrase (e.g., "Gradient Collapse", not "The Collapse of Gradients").
- Capitalization: Pattern names Title Case when used as headings; sentence case inline unless proper noun.

## 3. File & Section Structure

### Pattern Files

Follow `docs/standards/pattern-template.md` exactly in order; omit sections only if truly N/A and note rationale.

Required heading order:

1. Name (H1, single line)
1. Intent
1. Motivation
1. Structure
1. Participants
1. Dynamics (if behavioral aspects)
1. Consequences
1. Implementation Notes
1. Examples
1. Variants
1. Related Patterns
1. References

### Chapter Files

Recommended top-level flow:

1. Motivation / Framing
1. Core Concepts / Principles
1. Pattern Group Introductions
1. Representative Examples
1. Interactions / Composition
1. Open Questions / Future Directions
1. Summary

Use H2 for major sections, H3 for subsections; avoid H4+ unless essential for nested lists.

## 4. Markdown Conventions

- One sentence per line (facilitates diff review). OK to group short related sentences if tightly coupled.
- Hard wrap is not enforced; do not insert manual breaks for width except inside tables.
- Limit headings to H1 per file (except compiled multi-section docs).
- Use fenced code blocks with language spec (```python) whenever code appears.
- Lists: Use `-` for unordered, `1.` repeating for ordered (auto‑numbering).

## 5. Citations & References

- In‑text: `[Author et al., Year]` or `[Surname & Surname, Year]` when two authors.
- Use square-bracket citation keys only for disambiguation or cross-reference lists: `[ResNet2016]`.
- Maintain canonical bibliography in `docs/reference/references.md`: Each entry single paragraph, format:
  - `[ResNet2016] He, K., Zhang, X., Ren, S., & Sun, J. (2016). Deep Residual Learning for Image Recognition. CVPR.`
- Avoid inline URLs except when pointing to official repositories or specs; prefer DOI-less simplified citation.
- Do not duplicate references across pattern and chapter files—centralize.

## 6. Math Formatting

- Inline math: `$x_{t+1} = f(x_t, \theta)$`.
- Display math: Use `$$` only for multi-line derivations; minimize frequency.
- Prefer semantic variable names; avoid single-letter overload unless standard (e.g., `x`, `y`, `W`).
- Keep derivations brief in main narrative; move extended forms to appendix.

## 7. Code Examples

- Primary language: PyTorch-style Python pseudocode.
- Keep examples ≤ 25 lines; elide irrelevant boilerplate via `...` comment lines.
- Show pattern expression, not full training loop.
- Use consistent naming: `hidden_dim`, `num_layers`, `dropout_prob`.
- Avoid framework churn; target stable APIs.

Example:

```python
class ResidualBridge(nn.Module):
    def __init__(self, in_dim, out_dim):
        super().__init__()
        self.proj = nn.Linear(in_dim, out_dim) if in_dim != out_dim else nn.Identity()
        self.body = nn.Sequential(
            nn.LayerNorm(out_dim),
            nn.Linear(out_dim, out_dim),
            nn.GELU(),
            nn.Linear(out_dim, out_dim),
        )
    def forward(self, x):
        return self.body(self.proj(x)) + self.proj(x)
```

## 8. Diagrams

- Placeholder syntax: `TODO: diagram(residual-bridge)`.
- Diagram categories: Structure, Flow, Interaction, Composition.
- Use simple node shapes; no vendor‑specific styling.
- Color palette (future): neutral grayscale + single accent.
- Provide alt text in compiled outputs; in Markdown keep placeholder only.

## 9. Style Nuances

- Em-dash: Use `—` (Unicode) sparingly for parenthetical emphasis.
- Hyphen vs minus: Use `-` for hyphenation, `−` not required for subtraction; standard ASCII minus ok.
- Quotes: Prefer straight `""` unless typesetting stage handles curly conversion.
- Contractions: Avoid except in informal explanatory side notes.

## 10. Quality & Review Checklist

Each substantive addition should meet:

- Consistent glossary term usage
- No orphan headings (heading followed by nothing or just TODO without note)
- TODOs tracked (searchable via `TODO:` prefix)
- Citations correspond to existing reference keys
- Pattern template sections complete or explicitly marked `N/A (reason)`

## 11. Accessibility & Inclusion

- Avoid metaphors requiring cultural context (e.g., sports idioms).
- Provide textual description for any non-trivial figure (will be added at production stage).
- Use person-first or identity-respecting terminology when referencing user groups or datasets.

## 12. Anti-Patterns Documentation

Format similarly to patterns but highlight:

- Misleading Intent vs Observed Outcome
- Failure Modes (bulleted)
- Refactoring Recommendations
- Related Corrective Patterns

## 13. Versioning & Change Control

- Increment version header when structural style changes affect existing content.
- Editors may run batch normalization passes (terminology, citation format) — commit message prefix: `style:`.
- Avoid mass reflow commits that obscure semantic changes.

## 14. Future Publishing Considerations

Designed to minimize conversion friction:

- Single-source citations → export to BibTeX possible.
- Minimal inline HTML except badges (already permitted).
- Predictable heading nesting enables automated ToC extraction.
- Placeholders for diagrams allow later script-based replacement.
- Consistent code fences ease syntax highlighting configuration.

## 15. Common Pitfalls & Corrections

| Pitfall | Correction |
|---------|------------|
| Using multiple H1s | Restrict to one per file |
| Long unbroken paragraphs | Split by logical idea boundaries |
| Overuse of display math | Convert to inline unless clarity suffers |
| Reference added inline only | Move to `docs/reference/references.md` and cite |
| Pattern missing Participants | Add roles: components + data flows |
| Unexplained acronym | Expand first occurrence |

## 16. Style Glossary (Meta Terms)

| Term | Meaning |
|------|---------|
| Intent | Concise statement of problem solved |
| Participants | Structural elements and their roles |
| Consequences | Trade-offs and impacts |
| Variants | Common implementation modifications |
| Dynamics | Temporal or data-flow behavior |

## 17. Review Flow Integration

Pull Request should include a mini checklist:

- [ ] Glossary updated for new terms
- [ ] References updated for new citations
- [ ] Pattern template adhered to
- [ ] Diagram TODO placeholders added
- [ ] Lint passes (markdown + citations)

## 18. Deviation Policy

If a deviation from this guide is necessary:

- Add inline comment: `<!-- STYLE: justify deviation -->`
- Open issue tagged `style` if change may recur
- Editors periodically reconcile and fold accepted deviations into next version

## 19. Open Questions (Track for v1.0)

- Formal math style (vector bold vs plain?)
- Introduce BibTeX generation workflow?
- Default diagram DSL (Mermaid vs Graphviz)?
- Add pattern taxonomy ontology file?

---
**Updates:** Maintain change log in Git history; bump version when materially affecting contributor workflow.

````
