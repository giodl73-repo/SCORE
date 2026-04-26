# Skill: score-tradition

**Pipeline position:** Stage 1b — before or concurrent with composition  
**Rubric version:** v1.0 — SCORE  
**Produces:** `traditions/<slug>.md`

---

## Purpose

Document a musical tradition's grammar clearly enough that it can serve as a scoring reference. A tradition document is not a definition of the tradition — it is a description of what the tradition does when it is doing it well. The standard is set by the tradition's best practitioners, not its average ones.

Tradition documentation is required before composing in a new tradition, but not before reviewing a canonical work in that tradition. When reviewing a canonical import, the tradition document may be written concurrently with the panel — the review itself contributes to understanding the tradition's grammar.

## Preconditions

- A tradition has been identified that is not yet documented in `traditions/`
- At least one canonical exemplar of the tradition can be named

## Procedure

1. **Assign a slug.** The slug is the kebab-case tradition name (e.g., `fugue`, `jazz-standard`, `blues`).

2. **Draft the tradition document** with these sections:

   ### Origin and Claim
   What problem did this tradition solve? What can this tradition do that no other tradition can? Every tradition has a distinctive intelligence — a thing it can accomplish that gives it its reason for existing. Lead with that intelligence. The fugue can demonstrate that a single musical idea is rich enough to generate a complex, self-sufficient architecture. The blues can contain the truth about suffering in a form that transforms that suffering through music. The raga can create an entire emotional world from a specific combination of pitches, times of day, and improvisatory conventions. Name the claim.

   ### Grammar
   The tradition's internal rules — the conventions that, taken together, constitute the tradition's identity. Organized into:

   - **Key structural principles**: the formal architecture of the tradition; how it begins, develops, and ends; the relationship between fixed elements and improvised or variable elements
   - **Harmonic language**: the pitch materials the tradition employs; the relationship between those materials and the tradition's expressive content; the role of consonance and dissonance
   - **Typical forms**: the standard formal containers the tradition uses; their proportions and internal logic
   - **Rhythmic conventions**: the metric framework the tradition typically employs; the role of rhythm in the tradition's expressive vocabulary

   ### What Success Looks Like
   A description of a work in this tradition that is doing everything right. Not a list of rules followed — a description of the experience of a successful work. What does it feel like to hear a fugue that is working? What does it feel like to hear a jazz standard that is working? What does the listener experience, from the opening gesture to the final note, in a successful performance of a raga?

   ### Canonical Exemplars
   Three to six works in this tradition that represent its highest achievement. For each, name the specific feature that makes it canonical — not just "it is great" but "it demonstrates this specific thing about what the tradition can do."

   ### Adjacent Traditions
   Traditions that share some of the same vocabulary, conventions, or structural principles. Knowing the adjacent traditions helps locate the work being assessed — a piece that seems to be working in one tradition may actually be working in an adjacent one, and the assessment should reflect the tradition it is actually in.

   ### Forbidden Moves
   The specific choices that violate this tradition's grammar — not because they are technically wrong in some absolute sense, but because they contradict the convention that makes the tradition what it is. A jazz standard that does not invite improvisation is not a jazz standard; it may be a good piece of music, but it is working in a different tradition. A fugue that introduces new thematic material in the stretto is not following the tradition's grammar. Name these violations specifically.

3. **Save to `traditions/<slug>.md`.**

## Output Format

```markdown
---
slug: tradition-slug
name: Full Tradition Name
---

# [Full Tradition Name]

## Origin and Claim
...

## Grammar

### Key Structural Principles
...

### Harmonic Language
...

### Typical Forms
...

### Rhythmic Conventions
...

## What Success Looks Like
...

## Canonical Exemplars
...

## Adjacent Traditions
...

## Forbidden Moves
...
```

## Example Invocation

`/score-tradition fugue` — documents the fugue tradition's grammar; produces `traditions/fugue.md`.
