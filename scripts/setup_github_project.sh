#!/usr/bin/env bash
set -euo pipefail

# GitHub project bootstrap script
# Configures standard labels, outputs manual steps for Discussions categories,
# and prints recommended branch protection commands (cannot enforce via gh directly without admin token scope).
#
# Requirements:
# - GitHub CLI installed and authenticated: https://cli.github.com/
# - User must have write/admin rights to target repository.
# - (Optional) Provide repo via first arg or REPO env var; otherwise auto-detected from current directory.
#
# Usage:
#   # Run inside a cloned repository (auto-detects owner/name):
#   ./scripts/setup_github_project.sh
#   # Force update existing labels:
#   ./scripts/setup_github_project.sh --force
#   # Explicit repo override:
#   ./scripts/setup_github_project.sh owner/name
#   REPO=owner/name ./scripts/setup_github_project.sh --force
#
# Idempotency:
# - Existing labels with same name are skipped unless --force passed.
#
# Notes:
# - Some features (Discussions categories, branch protection) still require manual or separate API calls.

FORCE=false
while [[ $# -gt 0 ]]; do
  case "$1" in
    --force) FORCE=true; shift ;;
    -h|--help)
      grep '^#' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *)
      if [[ -z "${REPO:-}" ]]; then
        REPO="$1"; shift
      else
        echo "Unknown argument: $1" >&2; exit 1
      fi
      ;;
  esac
done

if ! command -v gh >/dev/null 2>&1; then
  echo "ERROR: gh CLI not found. Install from https://cli.github.com/" >&2
  exit 1
fi

# Auto-detect repo if not provided
if [[ -z "${REPO:-}" ]]; then
  if gh repo view --json nameWithOwner -q .nameWithOwner >/dev/null 2>&1; then
    REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
    echo "==> Auto-detected repository via gh: $REPO"
  elif git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    remote_url=$(git remote get-url origin 2>/dev/null || true)
    if [[ -n "$remote_url" ]]; then
      # Support SSH and HTTPS forms
      if [[ "$remote_url" =~ github.com[:/]{1}([^/]+/[^/.]+)(.git)?$ ]]; then
        REPO="${BASH_REMATCH[1]}"
        echo "==> Auto-detected repository via git remote: $REPO"
      fi
    fi
  fi
fi

if [[ -z "${REPO:-}" ]]; then
  echo "ERROR: Unable to determine repository. Provide owner/name as arg or set REPO env var." >&2
  exit 1
fi

echo "==> Using repository: $REPO"

# Function: create or update a label
create_label() {
  local name="$1" color="$2" desc="$3"
  if gh label list --repo "$REPO" --json name | grep -q "\"$name\""; then
    if $FORCE; then
      echo "Updating existing label: $name"
      gh label edit "$name" --repo "$REPO" --color "$color" --description "$desc" || true
    else
      echo "Skipping existing label: $name"
    fi
  else
    echo "Creating label: $name"
    gh label create "$name" --repo "$REPO" --color "$color" --description "$desc"
  fi
}

echo "==> Configuring labels"
# name | color | description
create_label "chapter"          "1E90FF" "Chapter-level content work"
create_label "pattern"          "9370DB" "Pattern documentation"
create_label "glossary"         "32CD32" "Glossary entries"
create_label "references"       "20B2AA" "Bibliography additions"
create_label "diagram"          "F4A460" "Diagram or visual asset"
create_label "example"          "FF8C00" "Code/example contribution"
create_label "enhancement"      "0366D6" "General improvement"
create_label "bug"              "D73A4A" "Content issue or error"
create_label "good-first-issue" "7057FF" "Beginner friendly"
create_label "help-wanted"      "0E8A16" "Needs contributor help"
create_label "review"           "C0C0C0" "Needs review pass"
create_label "draft"            "BFDADC" "Early incomplete content"
create_label "vol-1"            "4183C4" "Volume I scope"
create_label "vol-2"            "4183C4" "Volume II scope"
create_label "deviation"        "8B0000" "Tracked workflow deviation"

echo "==> Labels configured"

echo "==> (Info) Discussions categories must be added manually via UI:"
cat <<'CATEGORIES'
Recommended Categories:
- Announcements (Announcement) — Official project updates
- General Q&A (Discussion) — Ask questions about patterns or architecture
- Pattern Proposals (Discussion) — Propose new design patterns
- Chapter Development (Discussion) — Collaborate on chapter drafts
- Research & References (Discussion) — Share papers and citation discussion
- Examples & Code (Discussion) — Share implementations and snippets
CATEGORIES

echo "==> (Info) Branch protection example (requires admin):"
cat <<BP
# Manual step: configure via GitHub Settings > Branches or use API.
# Example gh API call (adjust as needed):
# gh api \
#   -X PUT \
#   -H "Accept: application/vnd.github+json" \
#   repos/${REPO}/branches/main/protection \
#   -f required_status_checks='{"strict":true,"contexts":[]}' \
#   -f enforce_admins=true \
#   -f required_pull_request_reviews='{"dismiss_stale_reviews":true,"require_code_owner_reviews":true,"required_approving_review_count":2}' \
#   -f restrictions=''
BP

echo "==> (Info) Suggested next automations: link-check, spell-check, citation validator"

echo "==> Done"
