# Neural Network Design Patterns — Book Project Plan

## Objective

Deliver a Minimum Viable Manuscript (MVM) for the first three chapters (Volume I — Foundations) with unified style and supporting scaffolds.

## Deliverables (MVM)

- Preface draft note in `docs/overview/toc.md` (no full prose yet)
- Chapters (skeleton + ≥60% prose each)
  - Ch.1 Principles of Neural Architecture Design
  - Ch.2 Anatomy of a Neural Design Pattern
  - Ch.3 Creational Patterns
- Pattern template (`docs/standards/pattern-template.md`) finalized
- Authoring guide (`CONTRIBUTING.md`) v1
- Glossary seed (`docs/reference/glossary.md`) ≥ 40 entries
- References seed (`docs/reference/references.md`) ≥ 30 entries

## Success Criteria

- Coherent chapter structure aligned with TOC
- Consistent terminology and citation style
- Each chapter includes: motivation, core ideas, examples, related patterns, and TODO list for diagrams
- No dead links or placeholder sections without a tracked TODO

## Schedule (sequenced milestones)

- Milestone 0 — Scaffolding & Standards
  - Create folder structure, TOC, template, contributing guide
- Milestone 1 — Draft Ch.1
- Milestone 2 — Draft Ch.2
- Milestone 3 — Draft Ch.3
- Milestone 4 — Glossary/Refs & Diagram lists
- Milestone 5 — MVM Review & Fix

## Work Breakdown

1. Scaffolding

   - README, PLAN, TOC, template, contributing, seeds for glossary/references
   - Chapter stubs with section headings and prompts

1. Writing

   - Prioritize clarity over breadth; de‑duplicate with cross‑references
   - Integrate examples pulled from: ResNet, Transformer, U‑Net, MoE, Adapters

1. Review

   - Two-pass review: technical accuracy then style consistency
   - Track open questions at the end of each chapter

## Risks & Mitigations

- Scope creep → lock MVM content to Ch.1–3 only; defer extras to Volume II+.
- Terminology drift → glossary as single source of truth; TOC annotations.
- Citation sprawl → references curated in a single file; prefer seminal over survey for seeds.

## Out of Scope (for MVM)

- Full build pipeline (PDF/website)
- Full diagrams inventory and rendering
- Complete copy‑editing pass

## Next Actions

- [ ] Approve this plan and schedule
- [ ] Assign chapter leads and reviewers
- [ ] Begin Milestone 0 tasks

## Notes

This folder contains the working plan and manuscript skeleton for a Gang of Four–style treatise on neural network design patterns.

Scope for this phase (Start of Book):

- Establish a clear plan, Table of Contents, and authoring conventions.
- Draft Volume I (Ch. 1–3) scaffolds and writing prompts.
- Create a reusable pattern template, glossary seed, and references seed.

Contents

- `docs/project/plan.md` — milestones, schedule, acceptance criteria for the first deliverable.
- `docs/overview/toc.md` — initial table of contents mapped to chapters.
- `docs/standards/pattern-template.md` — canonical pattern write‑up template (GoF‑style, DL‑specific).
- `CONTRIBUTING.md` — authoring standards, style, and citation rules.
- `docs/reference/glossary.md` — terms and concise definitions (seed list).
- `docs/reference/references.md` — canonical papers and sources (seed list).
- `chapters/volume-1/` — chapter stubs for Ch. 1–3 with section scaffolds.

Build/Publishing

- Build system is intentionally deferred; pick SSG/Doc tool after first draft (MkDocs, Sphinx, or mdBook).
- Diagrams are tracked as TODOs per chapter; rendering pipeline will be chosen with the build tool.

Contributing

- See `CONTRIBUTING.md` for voice, structure, code/math formatting, and review flow.
