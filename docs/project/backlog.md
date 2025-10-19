# Project Backlog

Central tracking for deferred tasks, diagram placeholders, and future automation outputs.

## Purpose

Provide a single location for:

- Diagram TODO aggregation (from `TODO: diagram(<slug>)` markers)
- Deferred pattern enhancements
- Planned automation scripts & tooling tasks
- Cross-cutting editorial passes (style, glossary expansion)

## Sections

### 1. Diagram Placeholders

List collected placeholders (future automation will append entries):

| File | Line | Placeholder |
|------|------|-------------|
| (pending scan) | | |
| chapters/volume-1/01-principles-of-neural-architecture-design.md | TBD | diagram(principles-overview) |
| chapters/volume-1/02-anatomy-of-a-neural-design-pattern.md | TBD | diagram(pattern-anatomy) |
| patterns/residual-connection.md | TBD | diagram(residual-connection) |

### 2. Pattern Enhancements

High-value improvements beyond MVM scope.

| Pattern | Enhancement Idea | Status |
|---------|------------------|--------|
| (none yet) | | |
| residual-connection | Add section on scaling strategies | Pending |
| residual-connection | Evaluate residual scaling factor ablation | Pending |
| (future) normalization-layer | Contrast pre- vs post-norm residual placement | Pending |

### 3. Automation Backlog

Mirror of items in `AGENTS.md` with status tracking.

| Item | Priority | Status | Notes |
|------|----------|--------|-------|
| Citation validator | High | Pending | Integrity of references |
| Diagram backlog aggregator | Medium | Pending | Populate Section 1 |
| Spell check workflow | Medium | Pending | Add to CI |
| Link checker | High | Pending | Prevent regressions |
| Pattern template linter | High | Pending | Structural compliance |
| Glossary usage scanner | Low | Pending | Identify undefined terms |

### 4. Editorial Passes

Upcoming consistency or clarity sweeps.

| Pass | Scope | Target Date | Status |
|------|-------|-------------|--------|
| Terminology normalization | Glossary vs chapters | (tbd) | Pending |
| Citation format audit | References file | (tbd) | Pending |
| Pattern taxonomy definition | Establish category boundaries | (tbd) | Pending |
| Metadata frontmatter rollout | Add YAML to patterns/papers | (tbd) | Pending |

### 5. Open Questions / Decisions

Capture unresolved governance or structural choices.

| Topic | Question | Owner | Status |
|-------|----------|-------|--------|
| Governance folder | Keep root or create `/docs/governance`? | Maintainers | Pending |
| Build system | MkDocs vs Sphinx vs mdBook | Maintainers | Deferred |
| Pattern directory scope | Single folder vs category subdirs | Maintainers | Pending |
| Citation key format | Maintain current PascalCase+Year? | Maintainers | Pending |

### 6. Completed Items

Archive of resolved backlog entries.

| Date | Item | Resolution |
|------|------|-----------|
| (none yet) | | |

---
Last updated: 2025-10-19
