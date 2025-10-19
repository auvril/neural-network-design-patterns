# Contributing — Authoring Standards

Voice & Audience

- Write for experienced ML practitioners and researchers; be accessible but precise.
- Prefer design intent and trade-offs over low-level API details.

Structure

- Follow the pattern template in `docs/standards/pattern-template.md` for all patterns.
- Chapters should include: motivation, core ideas, examples, related patterns, diagram TODOs.

Style

- Use American English; spell out the first instance of acronyms.
- Use inline code for identifiers (`Module.forward`, `hidden_dim`).
- Keep equations concise; prefer inline math where possible; move derivations to appendices if long.

Citations

- Use bracketed author-year: e.g., [He et al., 2016].
- Maintain canonical entries in `docs/reference/references.md`; link by short key (e.g., [ResNet2016]).

Cross-References

- Link to glossary terms rather than redefining (`docs/reference/glossary.md`).
- Use Related Patterns section to avoid duplication.

Diagrams

- Add a `TODO: diagram(<short-name>)` placeholder where needed.
- Prefer simple block graphs that show producers, interfaces, and consumers.

Review Flow

- PR includes: chapter/pattern changes + checklist of template fields filled.
- Two reviewers: one for technical correctness, one for style.
 Ownership & reviewer mapping: see `CODEOWNERS` for default maintainers and path-specific owners. Reference it when tagging reviewers.

Out of Scope

- Tooling/build system until after MVM; keep raw Markdown sources clean.
