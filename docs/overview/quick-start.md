````markdown
# Quick Start Guide

Welcome! This guide helps you make a high-quality first contribution.

## 1. Explore the Project

- Read `README.md` for scope and status
- Skim `docs/overview/toc.md` to understand structure
- Review `CONTRIBUTING.md` for style and standards
- Check open issues: patterns, chapters, glossary terms

## 2. Choose a Contribution Type

| Type | Typical Size | Good First Task Examples |
|------|--------------|--------------------------|
| Glossary term | 2–5 lines | Add definition for "Residual Bridge" |
| Reference | 1–3 lines | Add seminal paper (with citation key) |
| Pattern stub | 10–20 lines | Start Intent + Motivation sections |
| Chapter paragraph | 5–15 lines | Add principle explanation |
| Review | Comments | Provide clarity/consistency feedback |

## 3. Branch & Workflow

```bash
git checkout -b feat/add-residual-bridge-pattern
git commit -am "docs: add Residual Bridge pattern stub"
git push origin feat/add-residual-bridge-pattern
```

## 4. Pattern Authoring Basics

Use `docs/standards/pattern-template.md` and start with:

- Intent (1–2 sentences)
- Motivation (why this pattern exists; trade-offs)
- Structure (components & interactions)

Add `TODO: diagram(residual-bridge)` where visuals will go.

## 5. Citations & References

- In-text: `[He et al., 2016]`
- Add canonical entry in `docs/reference/references.md` with key: `[ResNet2016]`
- Prefer seminal work over secondary surveys for initial seeds

## 6. Glossary & Cross-References

- New term? Add concise definition to `docs/reference/glossary.md`
- Link related patterns in a "Related Patterns" section

## 7. Pull Request Checklist

Before submitting:

- Follows template or chapter structure
- Added references & glossary entries (if needed)
- No trailing whitespace or broken links
- Diagrams marked with TODO placeholders

## 8. Reviews

Each substantial PR needs:

- Technical review (accuracy, correctness)
- Style review (clarity, consistency)

## 9. Communication Channels

- Questions / brainstorming: GitHub Discussions
- Issues: Tasks, bugs, proposals
- PR comments: Specific line-level feedback

## 10. Quality Tips

- Prefer clarity over jargon
- Show trade-offs, not only benefits
- Consolidate duplicated explanations into cross-references
- Keep examples minimal but representative

## FAQ

**Q: How detailed should my first pattern be?**
Start with Intent + Motivation; others can iterate.

**Q: Can I add code?**
Yes—keep it minimal and illustrative.

**Q: What if I'm unsure about a citation?**
Open a discussion or add a `TODO: citation(?)` marker.

---
Happy contributing! Your additions help build a shared design vocabulary for neural architectures.

````
