# Skill: score-compose

**Pipeline position:** Stage 2 — after brief, before panel  
**Rubric version:** v1.0 — SCORE  
**Produces:** `works/NNNN-slug/composition.md`

---

## Purpose

Generate an original composition specification in response to a brief. The composition document specifies the musical work in sufficient detail that it can be assessed by the panel: its structure, harmonic language, rhythmic patterns, texture, instrumentation, and key moments. For simpler forms (jazz standards, short songs, brief pieces), the document may include actual notation in ABC notation or a prose description of specific passages with sufficient harmonic and melodic detail.

The composition is not a finished score; it is a specification detailed enough to be reviewed. The panel will assess it against the SCORE rubric. If the gate passes, the composition is complete at the specification level. If the gate is advisory or fail, the specification is revised before being considered complete.

## Preconditions

- `works/NNNN-slug/brief.md` exists
- The tradition has been identified (and ideally documented in `traditions/`)
- `scoring/RUBRIC.md` is the current rubric version

## Procedure

1. **Read the brief** carefully. The composition must address the subject, serve the audience, work within the tradition, accomplish the core musical aim, and respect the constraints. Every structural decision should be traceable to the brief.

2. **Draft the composition specification** with these sections:

   ### Overview
   A one-paragraph description of the work: what it is, for whom, in what tradition, and what it is trying to accomplish. This should be derivable from the brief but should also describe the specific compositional choices that have been made.

   ### Structure
   The formal architecture: how the work is organized at the largest scale. Name the tradition's formal model and explain how this composition uses it — where it follows the model, where it departs, and why. For multi-section works, describe each section's function and proportion. The structure should be specific enough that a listener could follow it without a score.

   ### Harmonic Language
   The pitch materials employed: the key or modal center, the chord vocabulary, the harmonic rhythm (how fast the harmonies change), and any notable harmonic events (modulations, substitutions, borrowed chords, modal shifts). For jazz or modal music, identify the scales, modes, or changes being used. For chromatic or atonal music, identify the organizing pitch principle.

   ### Melodic Material
   The primary melodic ideas of the work: the main theme, subject, or head; any secondary themes or countermelodies; the relationship between the melodic material and the harmonic language. For jazz, describe the melody of the head. For classical forms, describe the first and second themes. For through-composed or developmental forms, describe the seed material from which the work will grow.

   ### Rhythmic Profile
   The rhythmic character of the work: meter, tempo, rhythmic vocabulary, and any distinctive rhythmic features. For jazz, describe the groove and any rhythmic innovation. For classical forms, describe the metric framework and any notable rhythmic disruptions. For minimalism, describe the process of rhythmic change.

   ### Texture and Instrumentation
   How the forces are deployed: the relationship between voices or instruments, the textural character of each section, how texture changes across the work's span. Include specific instrumentation choices and their justification. For ensemble music, describe the relationship between parts.

   ### Key Moments
   Three to six specific moments that are structurally or expressively decisive — the entry of the second theme, the harmonic surprise, the climax, the false cadence, the final resolution. These should be specific enough that a reviewer could identify them in the specification.

   ### Actual Notation (for simpler forms)
   For works where actual notation is both possible and informative — a jazz standard head, a short song, a brief piano piece — include:
   - ABC notation for the melody
   - Chord symbols or Roman numeral analysis for the harmony
   - Prose description of any passages requiring more nuance than ABC notation provides

3. **Write frontmatter** and save to `works/NNNN-slug/composition.md`.

## Output Format

```markdown
---
work: NNNN-slug
stage: composition
tradition: tradition-slug
author: persona-slug (or 'human')
rubric_version: v1.0
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: []
---

# Composition: [Title]

## Overview
...

## Structure
...

## Harmonic Language
...

## Melodic Material
...

## Rhythmic Profile
...

## Texture and Instrumentation
...

## Key Moments
...

## Notation (if applicable)
[ABC notation or chord chart for simpler forms]
```

## Notation Guidelines

For ABC notation:
- Use standard ABC notation syntax
- Include key signature, time signature, and tempo marking
- For jazz melody, use straight notation; swing is a performance convention
- Chord symbols go above the staff: `"Cmaj7"C2...`

For chord charts:
- Use standard jazz chord symbols (Cmaj7, Dm7, G7, etc.)
- For classical, use Roman numeral analysis (I, IV, V, viio, etc.)
- Include bar lines and repeat signs

## Example Invocation

`/score-compose 0001-blues-piano` — generates a composition specification for work 0001 in the blues tradition for piano; produces composition.md.
