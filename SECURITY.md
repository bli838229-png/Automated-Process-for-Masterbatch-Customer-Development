# Security Policy

## Reporting a vulnerability

If you discover a security issue, please do **not** open a public issue. Instead, report it privately to the maintainers so it can be addressed before public disclosure.

## Safety principles of this project

This project is a methodology + prompt-library Skill. It does **not** ship any:

- API keys, credentials, or secrets (see `.gitignore`)
- Customer data or databases
- Automated email / WhatsApp / LinkedIn sending capability

The Skill is designed so that all outbound sends (email, WhatsApp, LinkedIn) are performed **manually by the human**, never automatically — this protects your accounts from platform bans.

## Keep customer data out of the repo

- Customer leads, emails, and contact details must **never** be committed.
- The bundled `examples/*.csv` files are templates with placeholder/sample rows only.
- Before pushing, run `git status` and `git ls-files` to confirm no `.env`, `.sqlite`, `data/`, or customer files are staged.
