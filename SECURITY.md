# Security Policy

Although this project is primarily a documentation/book repository, we still value secure and responsible handling of contributions and automation.

## Scope

- Source content (Markdown) — low risk
- Automation scripts / CI workflows — medium risk (potential for supply chain or secret exposure)
- No runtime services or deployed application yet

## Reporting a Vulnerability

If you believe you have found a security issue (e.g., malicious dependency suggestion, credential leak, or CI misconfiguration):

1. Email: <security@neuralpatterns.org> (placeholder; update when domain provisioned)
1. Provide: description, potential impact, reproduction steps.
1. Do NOT open a public issue if sensitive.

## Handling Procedure

- Triage within 7 days.
- Assess severity (low / moderate / high) based on potential data exposure or contributor impact.
- Mitigation plan documented in a private security advisory; public disclosure after fix (if applicable).

## Dependency & Script Review

- Prefer pinned versions in future automation scripts.
- Avoid executing third-party fetched code without checksum or verification.

## Secrets

- CI workflows should not introduce plaintext secrets.
- Use GitHub Action defaults; avoid custom PAT unless absolutely required.

## Future Enhancements

- Automated scan for accidental token leaks.
- Lint rule for disallowed file types (binary executables).

## Out of Scope

- Vulnerabilities in third-party papers or external sites referenced.
- Model vulnerabilities (adversarial examples) — this is a documentation project.

## Contact & Updates

This policy will evolve once build/publishing infrastructure is added. Track changes in `docs/project/backlog.md` under Open Questions.
