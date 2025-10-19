# Community & Label Setup

This guide documents manual setup tasks performed in the GitHub UI (not automated by repo files) to bootstrap collaboration.

## 1. Issue Labels

Suggested labels:

| Name | Color | Purpose |
|------|-------|---------|
| chapter | 1E90FF | Chapter-level content work |
| pattern | 9370DB | Pattern documentation |
| glossary | 32CD32 | Glossary entries |
| references | 20B2AA | Bibliography additions |
| diagram | F4A460 | Visual asset requests |
| example | FF8C00 | Code/example contributions |
| enhancement | 0366D6 | General improvements |
| bug | D73A4A | Content errors / broken links |
| good-first-issue | 7057FF | Starter tasks |
| help-wanted | 0E8A16 | Needs contributor assistance |
| review | C0C0C0 | Needs technical/style review |
| draft | BFDADC | Early content, not ready for review |
| vol-1 | 4183C4 | Volume I scope |
| vol-2 | 4183C4 | Volume II scope |

### Creating Labels via CLI (optional)

```bash
# Install GitHub CLI if not present
# sudo apt install gh  (or follow official instructions)

gh label create chapter --color 1E90FF --description "Chapter-level content work"
gh label create pattern --color 9370DB --description "Pattern documentation"
# ... repeat for others
```

## 2. Discussions Categories

Recommended categories:

| Category | Type | Description |
|----------|------|-------------|
| Announcements | Announcement | Official project updates |
| General Q&A | Discussion | Ask questions about patterns or architecture |
| Pattern Proposals | Discussion | Propose new design patterns |
| Chapter Development | Discussion | Collaborate on chapter drafts |
| Research & References | Discussion | Share papers and citation discussions |
| Examples & Code | Discussion | Share implementations and snippets |

### Steps (GitHub UI)

1. Go to Repository > Settings > General > Discussions.
1. Enable Discussions (if disabled).
1. Add categories with names, types, and descriptions above.
1. Pin Announcements category posts for major milestones.

## 3. CODEOWNERS Review Rules

Enforce required reviews (Settings > Branches):

- Require at least 2 reviewers on `main` branch.
- Enable "Require review from Code Owners".

## 4. Additional Automation (Future)

Potential bots/workflows:

- Stale issue closer (after 60 days inactivity)
- All Contributors bot for recognition
- Link checker workflow
- Spell check workflow (`codespell`)

## 5. Quality Gates Roadmap

| Gate | Status | Future Plan |
|------|--------|-------------|
| Markdown lint | ✅ Implemented | Enforce on PRs |
| Link check | ⏳ Pending | Add action workflow |
| Spell check | ⏳ Pending | Evaluate false positives |
| Citation validation | ⏳ Pending | Script to ensure reference keys exist |

---
Maintain this file as manual setup evolves.
