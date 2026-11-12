# Masterbatch Lead Gen — Usage Guide

How to actually use this Skill, end to end.

## 1. Load the Skill

- **WorkBuddy**: install via `install.sh` (or copy to `~/.workbuddy/skills/`), then mention the skill in conversation.
- **Claude / Cursor / other**: paste `SKILL.md` into the conversation as instructions.

## 2. Run the full pipeline (one prompt)

```
Run a complete masterbatch overseas lead-gen loop for [COUNTRY]:
products = custom color masterbatch + flame-retardant masterbatch.
1. Market research ([language] keywords)
2. Discover 20 plastic processors using [language] keywords
3. Score and grade the leads (A/B/C)
4. Draft [language] outreach emails for the top 5
5. Compile results into a local CSV lead sheet
```

Replace `[COUNTRY]` and `[language]` — e.g. Vietnam/vietnamese, Türkiye/turkish, Mexico/spanish.

## 3. Deep-dive a high-value lead

```
Analyze this company's website: [URL]
1. Main business & products
2. Do they use plastics that need coloring / modification?
3. Contact email / buyer hints
4. Do they need custom color / flame-retardant masterbatch? Why?
```

## 4. Score leads in bulk

```
Score and grade these 20 companies (A/B/C) by:
product fit, demand intensity, size, reachability, region.
Output a table sorted by grade.
```

## 5. Generate outreach copy (email / WhatsApp / LinkedIn)

```
Generate three outreach messages in [language] for this company:
1. Email (subject + body + signature)
2. WhatsApp opener (2-3 sentences, casual)
3. LinkedIn connection request + first message
```

## 6. Audit before sending (always)

```
Run a compliance audit on this outreach draft:
- fabricated certifications? exaggerations? third-party data?
- correct company/product names? professional tone? traceable sources?
Output: checklist results + final version marked "audited, ready for manual send".
```

## 7. Track in a CSV lead pool

Use `examples/lead-pool-template.csv`. Fields:
`company_name, country, city, industry, website, email, phone_whatsapp, linkedin, buyer_hint, products_needed, score, grade, source_url, status`

## Important rules

- **Never auto-send.** All outbound messages (email/WhatsApp/LinkedIn) are sent manually by you.
- **Never fabricate** company data or certifications.
- **Keep customer data local** — never commit it to a public repo.
- **Local language first** for outreach and search keywords.
