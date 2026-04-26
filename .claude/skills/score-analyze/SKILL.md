# Skill: score-analyze

**Pipeline position:** Stage 2b — canonical import setup  
**Rubric version:** v1.0 — SCORE  
**Produces:** `works/NNNN-slug/brief.md` + `works/NNNN-slug/work-description.md`

---

## Purpose

Set up a canonical work for panel review. Analogous to `prose-review` in the PROSE pipeline. For existing canonical works — a specific recording, score, or performance — this skill creates the two documents the panel needs: a review brief (the assignment, specifying what is being reviewed and why) and a work description (a detailed description of the musical work itself, sufficient for an informed reviewer who has not heard or seen this specific recording/score to engage substantively with it).

The work description is not a review. It is a neutral, detailed account of the music: its form, harmony, texture, rhythm, instrumentation, emotional arc, and key structural moments. The review is the panel's job. The work description gives the panel a common reference.

## Preconditions

- A canonical work has been identified for review: composer, title, tradition, specific recording or edition
- The work is sufficiently documented in the musical literature to support an accurate description

## Procedure

1. **Assign a work number and slug.** Count existing `works/` directories; next number is N+1. Slug is 2-4 words from the composer name and title, kebab-case (e.g., `0001-bach-art-of-fugue`, `0002-coltrane-a-love-supreme`). Create `works/NNNN-slug/`.

2. **Write the review brief** (`works/NNNN-slug/brief.md`):
   - **Subject**: the specific work being reviewed (composer, title, date, tradition)
   - **Audience**: who the panel is — the intended readers of this review
   - **Tradition**: the primary tradition this work belongs to
   - **Core Musical Aim**: what this work is trying to accomplish musically (stated based on the composer's known intentions, the tradition's conventions, and the work's evident design)
   - **Why this work**: why this canonical work is being reviewed — what it illuminates about the tradition, what innovations it may have introduced, what questions it raises for the rubric
   - **Sources**: the specific recording, score, or edition being used as the basis for review

3. **Write the work description** (`works/NNNN-slug/work-description.md`):
   - **Overview**: tradition, date of composition or premiere, forces required, duration
   - **Formal structure**: the work's overall architecture — movements, sections, large-scale proportions; for multi-movement works, describe each movement's formal logic
   - **Harmonic language**: the pitch materials employed; key areas, modal centers, chord vocabulary; notable harmonic events (modulations, substitutions, unexpected resolutions)
   - **Rhythmic profile**: meter, tempo, rhythmic vocabulary; notable rhythmic features (syncopation, metric modulation, rubato, rhythmic density)
   - **Texture and instrumentation**: how the forces are deployed; the relationship between voices or instruments; textural changes across the work's span
   - **Emotional arc**: the work's emotional trajectory from opening to close; how the musical materials support or create this arc
   - **Key moments**: three to six specific moments in the work that are structurally or expressively significant — the moment the subject enters in augmentation, the harmonic surprise at the development's peak, the final resolution; these should be specific enough that a reviewer could identify them in the score or recording

4. **Do not write the review.** The work description should be neutral and descriptive. Evaluative language belongs in the panel reviews.

## Output Format

### brief.md

```markdown
---
work: NNNN-slug
stage: brief
tradition: tradition-slug
author: human (or persona-slug)
rubric_version: v1.0
created: YYYY-MM-DD
sources:
  - "[Composer], [Title], [Recording/Edition details]"
---

# Brief: [Composer] — [Title]

## Subject
...

## Audience
...

## Tradition
...

## Core Musical Aim
...

## Why This Work
...
```

### work-description.md

```markdown
---
work: NNNN-slug
stage: description
tradition: tradition-slug
author: human (or persona-slug)
rubric_version: v1.0
created: YYYY-MM-DD
sources:
  - "[Composer], [Title], [Recording/Edition details]"
---

# Work Description: [Composer] — [Title]

## Overview
...

## Formal Structure
...

## Harmonic Language
...

## Rhythmic Profile
...

## Texture and Instrumentation
...

## Emotional Arc
...

## Key Moments
...
```

## Example Invocation

`/score-analyze bach-art-of-fugue` — sets up the canonical import of Bach's *Art of Fugue* for panel review; produces brief.md and work-description.md.
