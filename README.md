# Essay Skills for AI Agents

Professional essay writing and editing skills for Claude Code and other AI agents.

## Skills Included

### `/essay` — Professional Essay Writer
Transform raw ideas, scattered notes, and half-formed thoughts into intellectually rigorous prose. Features a mandatory 6-phase question flow to understand your intent before writing.

**What it handles:**
- Jumbled notes and bullet points
- Stream-of-consciousness thoughts
- Partial drafts or fragments
- Voice memo transcripts
- Research dumps with no thesis

### `/essay-edit` — Essay Section Editor
Edit individual sections of an essay while maintaining voice cohesion. Surgical revisions that preserve the established style.

**Edit types supported:**
- Tighten, Expand, Reframe, Sharpen
- Restructure, Tone shift, Bridge
- Kill darlings

## Installation

### Via skills.sh (recommended)
```bash
npx skills add clyderankin/essay-skills
```

### Via bash script
```bash
curl -fsSL https://raw.githubusercontent.com/clyderankin/essay-skills/main/install.sh | bash
```

## Voice Principles

Both skills follow consistent voice principles:

- **Philosophical yet Accessible** — Authority from perspective, not credentials
- **Intellectual Honesty** — Refuse easy positions; treat complexity as terrain
- **Strategic Sentence Architecture** — Length variation for impact
- **Grounding** — Abstract balanced with concrete specifics
- **No Mechanical Transitions** — Thematic flow over signposting
- **Productive Discomfort** — Preserve complexity; don't resolve too cleanly

## Usage

**Writing a new essay:**
```
/essay

[paste your notes, ideas, or fragments]
```

**Editing a section:**
```
/essay-edit

Section: "Your existing paragraph here..."

Notes: "Make it punchier" or "This feels off" or "Needs one more beat"
```

## License

MIT
