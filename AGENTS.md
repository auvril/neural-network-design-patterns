---
type: AGENTS.md
description: |
    This document establishes the collaboration framework for the Neural Network Design Patterns project, defining roles, processes, and automation that coordinate contributions across the repository.
Related: CONTRIBUTING.md, docs/standards/style-guide.md, CODE_OF_CONDUCT.md
---
# Repository Agents & Workflow Coordination

Version: 0.1 (Draft)
Audience: Agents, Maintainers, Automation Designers, Contributors

This document defines the human and automated "agents" (roles + processes) that coordinate work in the Neural Network Design Patterns project.

## 1. Purpose

Provide a predictable, low-friction collaboration model: who does what, when, and with which checks. Tie together existing governance docs (`CONTRIBUTING.md`, `docs/standards/style-guide.md`, `CODE_OF_CONDUCT.md`).

## 2. Role Taxonomy (Human Agents)

| Role | Core Responsibilities | Typical Actions | Access Level |
|------|-----------------------|-----------------|--------------|
| Maintainer | Strategic direction, repo hygiene | Merge PRs, enforce style | Write + Settings |
| Editor | Style, consistency, terminology | Run style passes, glossary edits | Write |
| Technical Reviewer | Validate correctness | Review pattern logic, math | PR review |
| Pattern Author | Create/extend patterns | Draft pattern files | Write (branch) |
| Chapter Lead | Coordinate chapter scope | Organize outline, close gaps | Write |
| Research Curator | References & citation quality | Add/update `references.md` | Write |
| Diagram Designer | Visual clarity | Produce diagrams post-TODO | Write (assets) |
| Automation Engineer | Build + CI/CD pipeline | Add workflows, linting | Write + Actions |
| Community Steward | Engagement & onboarding | Triage issues, welcome posts | Limited write |

Note: One contributor may hold multiple roles.

## 3. Automation Agents (System Processes)

| Agent | Trigger | Function | Future Expansion |
|-------|--------|----------|------------------|
| Markdown Lint (GitHub Action) | Push/PR | Enforces basic style rules | Add link + spell check |
| Welcome Bot | First issue/PR | Greets newcomers, points to docs | Add contributor stats |
| Code Owners / Review Gate | PR creation | Requires designated reviewers | Pattern category routing |
| Manual Labeler (human) | Issue triage | Applies semantic labels | Auto-label script |
| Pattern Consistency Script (planned) | PR check | Validate template completeness | Section diff quality |
| Citation Validator (planned) | PR check | Cross-refs citations vs `references.md` | BibTeX export |
| Diagram Placeholder Scanner (planned) | Nightly | Collect missing diagrams | Asset generation matrix |

## 4. Branching & Naming

| Type | Pattern | Example |
|------|---------|---------|
| Feature (pattern) | `feat/pattern/<short-name>` | `feat/pattern/residual-bridge` |
| Feature (chapter) | `feat/chapter/<number-keyword>` | `feat/chapter/01-principles` |
| Enhancement | `enh/<concise-topic>` | `enh/style-glossary` |
| Fix | `fix/<scope>` | `fix/glossary-typo` |
| Experiment (deferred) | `exp/<idea>` | `exp/mermaid-diagrams` |

Avoid long branch names; use lowercase + hyphens.

## 5. Pull Request Lifecycle

1. Author opens PR using template.
1. CI: markdown lint runs → must pass.
1. Reviewers (Technical + Editor) assigned via CODEOWNERS or manual.
1. Technical Review focuses on: correctness, unambiguous semantics, trade-offs.
1. Editorial Review focuses on: style guide compliance, glossary integration, citation format.
1. Optional: Maintainer requests changes, merges when both reviews approved.
1. Post-merge: Tag issue closed; update roadmap if milestone impacted.

## 6. Review Heuristics (Checklists)

### Technical Reviewer

- Pattern template sections present (Intent, Structure, Participants, Consequences)
- No contradictory claims vs known literature
- Examples compile conceptually (code sketch plausible)
- Edge cases acknowledged where relevant

### Editor

- Terminology matches `glossary.md`
- Citations resolved in `references.md`
- No run-on sentences beyond two clauses
- Diagram TODO placeholders follow `diagram(<slug>)`
- Ordered lists use unified `1.` style

## 7. Issue Management Workflow

| Stage | Action | Agent |
|-------|--------|-------|
| Intake | New issue labeled (`good-first-issue` if appropriate) | Steward/Maintainer |
| Scoping | Clarify acceptance criteria | Author + Reviewer |
| Execution | Branch opened & linked | Author |
| Review | PR submitted, reviewers assigned | Maintainer |
| Closure | Merge + issue close | Maintainer |
| Post | Add to changelog / progress board | Editor/Steward |

## 8. Label Semantics

| Label | Meaning | Usage Hint |
|-------|---------|-----------|
| `chapter` | Chapter-level draft/refinement | Multi-section edits |
| `pattern` | New or updated design pattern | Pattern template PRs |
| `glossary` | Terminology additions/changes | Short, definitional tasks |
| `references` | Bibliography curation | Citation corrections |
| `diagram` | Visual asset request | Linked to TODO placeholders |
| `example` | Code or usage snippet | Implementation emphasis |
| `review` | Needs review pass | Awaiting collaborator input |
| `draft` | Early incomplete content | Not ready for technical review |
| `help-wanted` | Needs additional contributor | Recruitment signal |
| `good-first-issue` | Low complexity starter | Onboarding tasks |

## 9. Pattern Template Enforcement (Planned Script)

Script logic outline:

- Parse Markdown sections by heading names
- Validate mandatory section presence
- Check for `TODO:` tokens count vs expected (diagrams, examples)
- Warn if code fences > 25 lines
- Report summary as PR comment

## 10. Citation Validator (Planned)

Algorithm concept:

1. Extract bracketed citation forms via regex: `/\[[A-Za-z].*?\d{4}\]/` (approx).
1. Map to keys in `references.md`.
1. Output missing or unused references list.
1. Future: Build BibTeX file `export/references.bib`.

## 11. Diagram Tracking

Nightly workflow (future):

- Search `TODO: diagram(` occurrences.
- Aggregate into `docs/project/backlog.md` with file/line context.
- Provide counts per pattern/chapter.

## 12. Roadmap Synchronization

After merging a milestone-impact PR:

- Update `docs/project/plan.md` statuses (✅ / 🔄 / ⏳)
- If glossary grows past threshold, consider version increment
- Tag release (`v0.x-mvm`) after Minimum Viable Manuscript achieved

## 13. Conflict Resolution

Escalation path:

1. Attempt async resolution in PR comments.
1. Open a `discussion` referencing specific sections.
1. Maintainer arbitration with rationale referencing style guide or contributing guide.
1. If unresolved and material: schedule synchronous review (video or live doc session).

## 14. Security & Integrity

- Do not commit large binary assets; prefer vector or textual diagram DSL.
- Scan for secrets (none expected) before merging external contributions.
- Automated actions run with least privilege (no PATs unless necessary).

## 15. Changelog Strategy

Lightweight approach:

- Use GitHub Releases for major manuscript milestones.
- Maintain `CHANGELOG.md` (future) only once volume reaches stable draft.

## 16. Metrics & Telemetry (Future)

Potential metrics:

- Patterns documented vs backlog
- Glossary term count growth
- Review turnaround time median
- Diagram completion ratio

## 17. Onboarding Flow Summary

1. Read `README.md` + `docs/overview/quick-start.md`
1. Pick labeled issue (`good-first-issue`)
1. Draft content following `docs/standards/style-guide.md` & `docs/standards/pattern-template.md`
1. Open PR with template checklist
1. Receive technical + editorial review
1. Merge & celebrate; pick next task

## 18. Automation Enhancement Backlog

| Item | Priority | Description |
|------|----------|-------------|
| Citation validator | High | Guarantee reference integrity |
| Diagram backlog aggregator | Medium | Visual tracking tooling |
| Spell check workflow | Medium | Catch common typos |
| Link checker | High | Prevent broken references |
| Pattern template linter | High | Enforce structural compliance |
| Glossary usage scanner | Low | Identify undefined terms |

## 19. Deviation Logging

When a workflow deviates (e.g., emergency direct commit to `main`):

- Add PR or issue labeled `deviation`
- Document reason + mitigation to prevent recurrence

## 20. Alignment With Style Guide

This agents doc aligns with `docs/standards/style-guide.md` by:

- Mirroring pattern section enforcement
- Requiring glossary/citation compliance in review
- Integrating diagram placeholder tracking

## 21. Future Integrations

- AI summarizer for long PRs (post‑lint) to assist reviewer efficiency
- Pattern diff visualizer (structure vs previous version)
- Ontology generator for pattern relationships graph

---
**Feedback:** Open an issue with label `enhancement` or start a Discussion in "General Q&A".
