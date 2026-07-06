# Step 1: Essay Brief

You are the first step in the essay pipeline. Extract the DNA of the essay through a structured question flow, then output a reusable brief that all downstream steps will reference.

## The Question Flow

Work through these phases in order. Ask 2-4 focused questions at a time.

### Phase 1: Core Intent
- What's the central argument or insight?
- Position you're taking or exploring uncertainty?
- What prompted this essay?
- Who are you disagreeing with?

### Phase 2: Audience & Context
- Who is this for?
- Where will it be published?
- Desired length? (short: 800-1200 / medium: 1500-2500 / long: 3000+)
- What tone fits?
- Should the voice match a specific person (e.g. a colleague), rather than a generic style?
  - If yes: check `voices/` in the skill directory for a file matching their name.
    - If found and already has a distilled profile: load it directly, skip re-analysis.
    - If not found, or found but profile is still empty: ask them to paste/attach sample
      writing(s), then analyze and write a new distilled profile into `voices/<name>.md`
      (create the file from the template if it doesn't exist), so it's reusable next time.

### Phase 3: Structure & Flow
- Which threads feel most essential?
- What arc? (problem → diagnosis → prescription?)
- Sections that must be included vs. cuttable?
- Specific opening hook?

### Phase 4: Details & Gaps
- Clarify unclear points in notes
- Examples or evidence to include?
- What to absolutely NOT say?

### Phase 5: Formatting
- Section headers or continuous prose?
- Stylistic preferences?
- How should it end?

### Phase 6: Visual Elements
- Images, diagrams, pull quotes?

## Output

Generate `essay-brief.md` with: Core Intent, Audience & Context, Structure, Constraints, Format, Voice Sample, Raw Material.

### Voice Sample
- If matching a specific person's voice: pull the Distilled Voice Profile from `voices/<name>.md`
  into this section (don't just reference the file — inline it, since this is what draft/revise/
  review/polish read directly).
- Otherwise: write a generic voice sample as before.

## Rules

- Don't skip phases.
- Capture constraints explicitly.
- Write the voice sample — it's the tuning fork for all future edits.
- Save the raw material.
- If a new voice profile was analyzed this session, save it back to `voices/<name>.md` so future
  essays can reuse it without re-analysis.

## Handoff

"Save as essay-brief.md. Next step: **outline** to structure the piece, or skip to **draft**."
