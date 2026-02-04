# Essay Skills for AI Agents

A professional essay writing pipeline for Claude Code and other AI agents. Six skills that take you from scattered notes to polished prose.

## The Pipeline

```
Notes → Brief → Outline → Draft → Revise → Review → Polish
```

| Skill | What it does |
|-------|--------------|
| `/essay-brief` | Extract the DNA through a question flow → saves `essay-brief.md` |
| `/essay-outline` | Create the structural skeleton → saves `essay-outline.md` |
| `/essay-draft` | Write the full first draft using brief + outline |
| `/essay-revise` | Surgical edits to specific sections |
| `/essay-review` | Tough editor diagnostic (structure, argument, voice) |
| `/essay-polish` | Final rhythm, word choice, and honest assessment |

## Installation

### Via skills.sh (recommended)
```bash
npx skills add clyderankin/essay-skills
```

### Via bash script
```bash
curl -fsSL https://raw.githubusercontent.com/clyderankin/essay-skills/main/install.sh | bash
```

## Usage

### Full Pipeline (Recommended)

**Step 1: Capture the DNA**
```
/essay-brief

[paste your notes, ideas, fragments]
```
→ Answer the questions → Get `essay-brief.md`

**Step 2: Structure it**
```
/essay-outline

[paste or reference your essay-brief.md]
```
→ Approve the skeleton → Get `essay-outline.md`

**Step 3: Write it**
```
/essay-draft

[reference your brief and outline]
```
→ Get the full first draft

**Step 4: Revise sections**
```
/essay-revise

Section: "Your paragraph here..."
Notes: "Make it punchier" or "This feels off"
```
→ Get surgical edits that respect the brief

**Step 5: Get tough feedback**
```
/essay-review

[paste or reference your draft]
```
→ Get an honest editorial diagnostic

**Step 6: Final polish**
```
/essay-polish

[paste or reference your reviewed draft]
```
→ Get the polished final version + honest assessment

### Quick Mode

Don't need the full pipeline? You can:
- Skip `/essay-outline` and go straight from brief to draft
- Jump to `/essay-revise` if you already have a draft
- Use `/essay-review` on any draft, even without a brief (less precise feedback)

## Voice Principles

All skills follow consistent voice principles:

- **Philosophical yet Accessible** — Authority from perspective, not credentials
- **Intellectual Honesty** — Refuse easy positions; treat complexity as terrain
- **Strategic Sentence Architecture** — Length variation for impact
- **Grounding** — Abstract balanced with concrete specifics
- **No Mechanical Transitions** — Thematic flow over signposting
- **Productive Discomfort** — Preserve complexity; don't resolve too cleanly

## The Files

The pipeline creates artifacts you can save and reference:

| File | Created by | Used by |
|------|------------|---------|
| `essay-brief.md` | `/essay-brief` | All downstream skills |
| `essay-outline.md` | `/essay-outline` | `/essay-draft` |
| `essay-draft.md` | `/essay-draft` | `/essay-revise`, `/essay-review` |

The brief is the source of truth. Every skill checks against it to maintain consistency.

## License

MIT
