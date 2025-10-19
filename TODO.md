# Project TODO Roadmap

Structured backlog of architectural, governance, and automation improvements not yet implemented.

## Immediate (0-2 weeks)

- Migrate `AGENTS.md` into `docs/` (or add symlink) for governance cohesion.
- Implement markdown link checker (CI workflow).
- Implement pattern template linter (validate required headings).
- Add glossary usage scanner (term defined before used).
- Add frontmatter to `patterns/residual-connection.md` & future patterns (YAML metadata).
- Add frontmatter to paper verification files (citation key, title, venue).
- Normalize ordered lists to unified `1.` style across existing chapters.

## Near-Term (2-6 weeks)

- Create `patterns/` category subdirectories (e.g., `structural/`, `interface/`).
- Add initial pattern index generator script (`scripts/generate_pattern_index.py`).
- Diagram backlog aggregator script populating `docs/project/backlog.md` automatically.
- Add `SECURITY.md` contact email once domain provisioned.
- Create `docs/project/decisions.md` decision log (ADR-like).
- Introduce `roadmap.md` alias or rename `plan.md` for clarity (evaluate).
- Draft `docs/standards/pattern-taxonomy.md` articulating category definitions.

## Long-Term (6+ weeks)

- Build pipeline (mkdocs-material or mdBook) with versioned releases.
- Pattern relationship graph generation (Mermaid or DOT) from frontmatter relations.
- Semantic diff tool for pattern structural changes (compare headings & sections).
- Release automation: milestone closure triggers changelog generation.
- Citation validator builds `export/references.bib`.
- Glossary term evolution metrics (growth, orphan term detection).

## Research / Open Questions

- Governance folder consolidation vs root minimalism.
- Citation key format longevity (PascalCaseYear vs alternative).
- Pattern versioning strategy (v1 when stabilized, semantic changes tracked?).
- Build tool selection criteria (plugin ecosystem, math rendering, diagram support).

## Quality & Sustainability Enhancements

- Pre-commit hooks: markdown lint, link check, pattern template validation.
- Contributor analytics (review turnaround time, pattern completion velocity).
- Accessibility audit (headings hierarchy, alt text for future diagrams).

## Nice-to-Have / Deferred

- AI summarizer for large PRs (post-lint) assisting review.
- Ontology generator for pattern relationships.
- Automated code example test harness (do snippets execute?).

---
Last updated: 2025-10-19
