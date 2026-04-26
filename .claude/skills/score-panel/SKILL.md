# Skill: score-panel

**Pipeline position:** Stage 3 — after composition or work description  
**Rubric version:** v1.0 — SCORE  
**Produces:** `works/NNNN-slug/panel/<persona>.md` and `works/NNNN-slug/panel/SUMMARY.md`

---

## Purpose

Run a multi-voice panel review of a work. Three personas (chosen by tradition alignment) and two lenses each review the work against the SCORE rubric, disagreeing by design. The SUMMARY aggregates scores, surfaces tensions, logs innovations, and determines gate status.

Personas disagree by design. A panel where all reviewers agree has not found the interesting problems. The tension between Bach's focus on voice leading and Coltrane's focus on the search is not a problem to be resolved — it is information about the work. The friction between Pärt's Economy of subtraction and Beethoven's Economy of development is the point.

## Preconditions

- `works/NNNN-slug/composition.md` exists (or `work-description.md` for canonical imports)
- `works/NNNN-slug/brief.md` exists
- `scoring/RUBRIC.md` is the current rubric version
- Personas are defined in `personas/`

## Procedure

1. **Select reviewers.** Choose 3 personas from `personas/` based on tradition alignment:
   - Primary: the persona most identified with the work's tradition (e.g., Bach for fugue, Coltrane for jazz, Sondheim for musical theater)
   - Secondary: a persona from an adjacent or contrasting tradition (productive friction)
   - Tertiary: a third persona chosen for a dimension the first two may neglect

   Select 2 lenses from `personas/lenses/` based on the work's concerns:
   - Default pairing for classical/notated works: `music-theorist` + `performer`
   - Default pairing for jazz/improvised works: `listener` + `historian`
   - Default pairing for recorded works: `listener` + `producer-engineer`
   - Default pairing for sacred/spiritual works: `historian` + `listener`

2. **Run each persona review.** For each persona:
   - Read their definition in `personas/<slug>.md`, especially their preferred axes and voice
   - Score the work on all 5 SCORE dimensions
   - Write the review in the persona's voice: specific, grounded in the work, referring to named elements, passages, or structural moments
   - Identify 1-2 structural innovations — techniques the work deploys or problems the rubric doesn't yet name
   - Save to `works/NNNN-slug/panel/<persona>.md`

3. **Run each lens review.** Same procedure, voiced from the lens perspective. Save to `works/NNNN-slug/panel/<lens>.md`.

4. **Write the SUMMARY:**
   - Score table: each reviewer's scores by dimension + total
   - Weighted aggregate (primary persona: 30%, secondary: 25%, tertiary: 20%, lens 1: 15%, lens 2: 10%)
   - Key agreements: where do reviewers converge?
   - Key tensions: where do they most sharply disagree? what does that tension illuminate?
   - Innovations flagged: list any structural innovations named in reviews
   - Gate status: PASS (≥ 60), ADVISORY (50-59), FAIL (< 50)
   - Recommendations: 3-5 specific actionable revisions if ADVISORY or FAIL

   Save to `works/NNNN-slug/panel/SUMMARY.md`.

## Available Personas

| Slug | Best for |
|------|----------|
| `bach` | fugue, counterpoint, chorale, baroque forms |
| `beethoven` | symphony, string-quartet, piano-sonata, classical-sonata |
| `mozart` | opera, symphony, piano-concerto, chamber-music |
| `coltrane` | jazz-standard, modal-jazz, bebop, free-jazz |
| `miles` | cool-jazz, modal-jazz, jazz-fusion, jazz-standard |
| `sondheim` | musical-theater, art-song, song-cycle |
| `pärt` | minimalism, sacred-music, tintinnabuli |
| `ellington` | jazz-orchestra, swing, blues, jazz-composition |
| `mingus` | jazz-composition, blues, jazz-standard, avant-garde |
| `bernstein` | symphony, musical-theater, music-theory |

## Available Lenses

| Slug | Best for |
|------|----------|
| `music-theorist` | harmonic analysis, voice leading, formal structure; any tradition |
| `performer` | performability, notation, technical demands; any tradition |
| `listener` | first-hearing reception, attention, resonance; any tradition |
| `historian` | tradition placement, precedent, contribution; any tradition |
| `producer-engineer` | sonic production, mix, recording quality; recorded works only |

## Persona Review Format

```markdown
---
work: NNNN-slug
stage: panel
reviewer: persona-slug
rubric_version: v1.0
created: YYYY-MM-DD
---

# [Persona Name] — Panel Review

## Scores

| Dimension | Score | Max |
|-----------|-------|-----|
| Structure | | 25 |
| Craft | | 25 |
| Originality | | 15 |
| Resonance | | 15 |
| Economy | | 20 |
| **Total** | | **100** |

## Review

[Voiced review in the persona's register. Specific. Grounded in the work. References named elements, passages, structural moments. Does not hedge or generalize — says the thing the persona would say.]

## Innovations Flagged

[Any structural techniques this work deploys, or rubric gaps this work exposes, that the current rubric does not yet name.]
```

## SUMMARY Format

```markdown
---
work: NNNN-slug
stage: panel-summary
rubric_version: v1.0
created: YYYY-MM-DD
---

# Panel Summary: [Title]

## Score Table

| Reviewer | Structure /25 | Craft /25 | Originality /15 | Resonance /15 | Economy /20 | Total /100 |
|----------|--------------|-----------|----------------|--------------|-------------|-----------|
| [Primary persona] | | | | | | |
| [Secondary persona] | | | | | | |
| [Tertiary persona] | | | | | | |
| [Lens 1] | | | | | | |
| [Lens 2] | | | | | | |
| **Weighted aggregate** | | | | | | **XX.X** |

Weights: primary 30% · secondary 25% · tertiary 20% · lens 1 15% · lens 2 10%

## Gate

**[PASS / ADVISORY / FAIL]** — [aggregate score]

## Key Agreements

[Where reviewers converge and why that convergence is meaningful]

## Key Tensions

[Where reviewers most sharply disagree, and what that disagreement illuminates about the work]

## Innovations Flagged

[Structural techniques or rubric gaps named across the reviews]

## Recommendations

[3-5 specific actionable revisions — only if ADVISORY or FAIL]
```

## Example Invocation

`/score-panel 0001-bach-fugue` — runs full panel (3 personas + 2 lenses) on work 0001, produces panel/ directory and SUMMARY.
