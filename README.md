<p align="center">
  <img src="logo.png" width="160" alt="Masterbatch Lead Gen logo" />
</p>

# Masterbatch Lead Gen 🎨

> **Turn your AI assistant into a 24/7 overseas sales team for masterbatch manufacturers.**

An AI **Skill** for overseas lead generation in the masterbatch industry. It turns the "find → score → outreach → track" export sales loop into a reusable methodology + prompt library that turns your AI assistant into a 24/7 foreign-trade team.

![cover](cover-banner.png)

> **This is a methodology + prompt + knowledge Skill, not an app.** It runs inside any Skill-compatible AI assistant (WorkBuddy, Claude, Cursor, etc.) and reuses the assistant's built-in web search, file I/O, and scheduling — no backend, database, or desktop app required.

🌐 **Languages**: [English](README.md) · [简体中文](README.zh-CN.md) · [Tiếng Việt](README.vi.md) · [Türkçe](README.tr.md) · [Español](README.es.md)

## Who is this for?

Manufacturers of:
- **Custom color masterbatch** (tailored to resin, color, and processing)
- **Color matching / proofing** (physical swatch, Pantone, RAL)
- **Flame-retardant masterbatch** (independent product line)

Targeting overseas markets: Southeast Asia (Vietnam, Thailand, Indonesia), Middle East (Türkiye, Saudi Arabia), Latin America (Brazil, Mexico), Europe, and beyond.

## What it does

A complete export lead-gen loop, expressed as agent "roles":

| Role | Job |
|---|---|
| 🎯 Market Research Agent | Country analysis, entry strategy, local-language keywords |
| 🗺️ Map Scraping Agent | Pull prospects by country via Google Places API |
| 🔍 Prospecting Agent | Discover overseas companies via web search |
| 📄 Website Research Agent | Extract public info, emails & buyer hints |
| ✍️ Business Communication Agent | Draft multilingual emails / WhatsApp / LinkedIn copy |
| 🧮 Lead Evaluation Agent | Score and grade leads (A/B/C) |
| 👔 General Manager Agent | Summarize, flag risks, compliance review |

```
① Market research → ② Google Maps scraping → ③ Prospect discovery
  → ④ Website deep-dive → ⑤ Lead scoring → ⑥ Outreach draft
  → ⑦ Multi-channel outreach (email/WhatsApp/LinkedIn) → ⑧ Track & audit
```

> **Pragmatic automation**: the AI does all the heavy lifting (scraping, filtering, writing, tracking, auditing), but **outbound sends (email / WhatsApp / LinkedIn) are always done manually by the human** — this keeps your accounts safe from platform bans.

## Quick start

1. **Install** the Skill (see [Installation](#installation) below).
2. Run a full loop:

```
Run a complete masterbatch overseas lead-gen loop for Vietnam:
products = custom color masterbatch + flame-retardant masterbatch.
1. Market research (Vietnamese keywords)
2. Discover 20 plastic processors using Vietnamese keywords
3. Score and grade the leads
4. Draft Vietnamese outreach emails for the top 5
5. Compile results into a local CSV lead sheet
```

## Installation

### WorkBuddy (recommended)

```bash
# Copy the skill into your user skills directory
git clone https://github.com/<your-org>/masterbatch-lead-gen.git
cp -r masterbatch-lead-gen ~/.workbuddy/skills/masterbatch-lead-gen
```

Then say in WorkBuddy: *"Use the masterbatch lead gen skill to find Vietnamese customers."*

### Claude Desktop / Cursor / other assistants

Copy the `SKILL.md` and `references/` into your assistant's skills folder, or simply paste `SKILL.md` as instructions into a conversation.

### One-line install script

```bash
curl -fsSL https://raw.githubusercontent.com/<your-org>/masterbatch-lead-gen/main/install.sh | bash
```

## Repository layout

```
SKILL.md                          # Skill entry: roles, loop, safety rules
README.md                         # English readme (this file)
README.zh-CN.md / README.vi.md / README.tr.md / README.es.md
references/
  industry-knowledge.md           # Masterbatch domain knowledge & terminology
  lead-gen-workflow.md            # Full pipeline + prompt templates
  multilingual-keywords.md        # VN / TR / ES / EN search keywords
  outreach-templates.md           # Multilingual outreach email templates
  lead-scoring.md                 # Scoring dimensions & grading
  safety-compliance.md            # Privacy, factuality & compliance rules
examples/
  lead-pool-template.csv          # CSV lead sheet template
  usage-examples.md               # Copy-paste prompts
install.sh                        # One-line installer
CONTRIBUTING.md · CODE_OF_CONDUCT.md · SECURITY.md · LICENSE
```

## Safety boundaries (non-negotiable)

- **Never fabricate** company names, URLs, emails, or certifications.
- **Outbound sends are never automated** — emails, WhatsApp and LinkedIn are human-sent; the AI only prepares copy.
- **No unofficial WhatsApp automation / LinkedIn scraping** (platform bans).
- **Customer data stays local** — never commit it to a public repo.
- **Local-language first** — outreach & keywords in the prospect's language.

## Contributing

Contributions are welcome — especially new languages and outreach templates. See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE)
