#!/bin/bash

# Essay Skills Pipeline Installer
# Run with: curl -fsSL https://raw.githubusercontent.com/clyderankin/essay-skills/main/install.sh | bash

set -e

CLAUDE_DIR="$HOME/.claude"
SKILLS_DIR="$CLAUDE_DIR/skills"

echo "Installing essay skills pipeline..."
echo ""

# Create directories
mkdir -p "$SKILLS_DIR"

# 1. Essay Brief
mkdir -p "$SKILLS_DIR/essay-brief"
cat > "$SKILLS_DIR/essay-brief/SKILL.md" << 'EOF'
---
name: essay-brief
description: Extract the DNA of your essay through a question flow and save it as a reusable brief
---

# Essay Brief

You are the first step in a professional essay pipeline. Extract the DNA of the essay through a structured question flow, then output a reusable brief that all downstream skills will reference.

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
- Desired length? (short/medium/long)
- What tone fits?

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

Generate essay-brief.md with: Core Intent, Audience & Context, Structure, Constraints, Format, Voice Sample, Raw Material.

## Handoff

"Save as essay-brief.md. Use /essay-outline to structure, or /essay-draft to write."
EOF
echo "✓ essay-brief"

# 2. Essay Outline
mkdir -p "$SKILLS_DIR/essay-outline"
cat > "$SKILLS_DIR/essay-outline/SKILL.md" << 'EOF'
---
name: essay-outline
description: Create the structural skeleton—arc, sections, and throughline—before drafting
---

# Essay Outline

Create the structural skeleton before drafting. Requires essay-brief.md.

## Process

1. Read the Brief - Extract central argument, arc, threads, hook, ending, length
2. Propose Structure - Opening, sections with purposes, closing
3. Identify Throughline - The single connecting thread
4. Flag Risks - Potential structural problems
5. Get Approval - Revise until approved

## Output

Generate essay-outline.md with: Overview, Structure (all sections with purposes), Structural Notes.

## Handoff

"Save as essay-outline.md. Use /essay-draft to write."
EOF
echo "✓ essay-outline"

# 3. Essay Draft
mkdir -p "$SKILLS_DIR/essay-draft"
cat > "$SKILLS_DIR/essay-draft/SKILL.md" << 'EOF'
---
name: essay-draft
description: Write the full first draft using the brief and outline as guides
---

# Essay Draft

Write the full first draft. Requires essay-brief.md, optionally essay-outline.md.

## Voice Principles

- Philosophical yet Accessible
- Intellectual Honesty
- Strategic Sentence Architecture
- Grounding in specifics
- No Mechanical Transitions

## Process

1. Load Context - Get brief and outline
2. Confirm Before Writing - Summarize understanding
3. Write Full Draft - Follow outline, embed visual callouts
4. Mark Uncertain Passages - Flag doubts with [??]

## Output

Full essay with Draft Notes: What Worked, Flagged for Revision, Word Count.

## Handoff

"Save as essay-draft.md. Use /essay-revise for sections, /essay-review for diagnostic."
EOF
echo "✓ essay-draft"

# 4. Essay Revise
mkdir -p "$SKILLS_DIR/essay-revise"
cat > "$SKILLS_DIR/essay-revise/SKILL.md" << 'EOF'
---
name: essay-revise
description: Surgical edits to specific sections while maintaining voice cohesion
---

# Essay Revise

Make surgical edits to sections. Check essay-brief.md to maintain voice.

## Edit Types

- Tighten: Cut words, remove redundancy
- Expand: Add depth, examples
- Reframe: Change angle, keep point
- Sharpen: More precise, more vivid
- Restructure: Reorder for flow
- Tone shift: Adjust register
- Bridge: Connect to surrounding sections
- Kill darlings: Remove what doesn't work

## Process

1. Read section and notes
2. Check brief for voice/constraints
3. Identify edit type
4. Make edit, preserve voice
5. Explain what changed

## Output

Edit type, Revised section, What changed, Brief compliance.

## Handoff

"Update essay-draft.md. Use /essay-review for full diagnostic."
EOF
echo "✓ essay-revise"

# 5. Essay Review
mkdir -p "$SKILLS_DIR/essay-review"
cat > "$SKILLS_DIR/essay-review/SKILL.md" << 'EOF'
---
name: essay-review
description: Tough editor diagnostic—structure, argument, voice drift
---

# Essay Review

The tough editor. Diagnose what's not working.

## Review Framework

1. Argument Integrity - Claim clear? Earned? Logical gaps?
2. Structure & Pacing - Opening hooks? Dead zones? Ending lands?
3. Voice & Consistency - Matches brief? Unintentional shifts?
4. Reader Experience - Where lost? Bored? Disagree?
5. Constraint Compliance - Honors brief's must/must-not lists?

## Output

Editorial Review: Overall Assessment, Verdict (Ready for polish / Needs revision / Needs structural rework), Scores per dimension, Priority Fixes (Must/Should/Could), Recommendation.

## Tone

Direct, not cruel. Diagnose specifically.

## Handoff

"If needs revision: /essay-revise. If ready: /essay-polish. If structural rework: /essay-outline."
EOF
echo "✓ essay-review"

# 6. Essay Polish
mkdir -p "$SKILLS_DIR/essay-polish"
cat > "$SKILLS_DIR/essay-polish/SKILL.md" << 'EOF'
---
name: essay-polish
description: Final pass—rhythm, word choice, consistency, and honest assessment
---

# Essay Polish

Final step. Bring out the shine and give honest assessment.

## The Polish Pass

1. Rhythm & Flow - Cadence, paragraph lengths, transitions
2. Word-Level Precision - Weak verbs, filler, redundancy
3. Consistency Check - Formatting, voice, tense, terminology
4. Final Read - Note anything that pulls you out

## Output

Polished essay, then: Changes Made, Final Assessment (What Works, Lingering Concerns, Honest Take), Visual Summary.

## The Honest Take

Be genuinely honest about quality. The author deserves to know what they're shipping.

## Handoff

"Your essay is polished. Final word count: X. Ship it."
EOF
echo "✓ essay-polish"

echo ""
echo "Done! Essay pipeline installed:"
echo ""
echo "  /essay-brief   → Capture the DNA"
echo "  /essay-outline → Structure it"
echo "  /essay-draft   → Write it"
echo "  /essay-revise  → Fix sections"
echo "  /essay-review  → Tough feedback"
echo "  /essay-polish  → Final shine"
echo ""
echo "Restart Claude Code to use them."
