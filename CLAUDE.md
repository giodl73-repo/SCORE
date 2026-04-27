# SCORE — Music Design Lab

## Mission

SCORE is a framework for studying and evaluating musical works across the full spectrum of traditions — from Baroque counterpoint to jazz improvisation, from minimal repetition to orchestral drama, from the twelve-bar blues to the raga. We learn how musical traditions work by working through them — analyzing canonical works, evaluating original compositions, evolving our understanding through practice.

The studio is named SCORE after the rubric at its centre. A score is what music is written as; SCORE is how it is evaluated. The rubric is SCORE: **S**tructure, **C**raft, **O**riginality, **R**esonance, **E**conomy. Every work of music can be assessed through these five dimensions, whether it is a Bach fugue, a Coltrane improvisation, a twelve-bar blues, a film score, or a raga performance.

SCORE is the third member of a family: ASPECT (visualization, C:\src\degas) and PROSE (writing, C:\src\prose). Same methodology — canonical import reviews, original compositions, personas disagree by design, innovations cluster into rubric amendments. Different medium.

## Core Vocabulary

- **Tradition** — a musical form or style with its own grammar, conventions, and standards (sonata, fugue, jazz standard, blues, raga, etc.)
- **Work** — a specific piece of music: either a canonical recording/score or an original composition
- **Brief** — the assignment: what is being composed, for whom, in which tradition
- **Persona** — a named composer or musician-critic who embodies one or more traditions and voices panel reviews
- **Lens** — a review perspective (music theorist, performer, listener, historian, producer/engineer)
- **Panel** — a multi-persona/multi-lens review: 3 personas + 2 lenses
- **Innovation** — a structural technique that advances the rubric; logged during panel sessions
- **Amendment** — a rubric revision ratified from clustered innovations
- **SCORE** — the rubric: Structure, Craft, Originality, Resonance, Economy

## Traditions (living list)

Traditions are documented in `traditions/`. New traditions are added when a work requires a vocabulary not yet documented.

- `classical-sonata` — the three- or four-movement form built on sonata-allegro structure; exposition, development, recapitulation
- `fugue` — contrapuntal composition built on the systematic development of a subject through imitative entries
- `jazz-standard` — the 32-bar AABA or ABAC song form as a vehicle for improvisation and harmonic elaboration
- `blues` — the 12-bar (or variant) form built on I-IV-V harmony; the call-and-response structure; truth-telling as aesthetic obligation
- `song-cycle` — a sequence of art songs organized by theme, narrative arc, or dramatic logic; the sequence as the unit of meaning
- `minimalism` — music built from gradual process, repetition, and slow transformation; phase-shifting, additive processes, drone
- `symphony` — the large-scale orchestral work in multiple movements; the expansion of sonata form to its fullest instrumental forces
- `musical-theater` — the integration of song, lyric, and dramatic function; every musical choice in service of character and story
- `raga` — the North or South Indian classical improvisation built on a specific melodic framework; the time of day, the season, the emotional state
- `electronic` — music made with electronic means; synthesis, sampling, production as composition
- `folk-song` — music tied to community, memory, and oral transmission; melody and text inseparable from their social function
- `art-song` — the European classical song for voice and piano; the relationship between text and musical setting as primary argument
- `chamber-music` — music for small ensemble without conductor; conversation between specific voices; the string quartet as model

## Personas

Ten founding personas live in `personas/`. Each embodies one or more traditions, has signature techniques, and voices panel reviews from their own intellectual stance. Personas disagree by design.

| Slug | Name | Tradition(s) | Signature |
|------|------|--------------|-----------|
| `bach` | Johann Sebastian Bach | fugue, chorale, suite, concerto | Counterpoint as moral geometry; every voice complete |
| `beethoven` | Ludwig van Beethoven | symphony, string-quartet, piano-sonata, classical-sonata | Form as the capacity to surprise itself; development as transformation |
| `mozart` | Wolfgang Amadeus Mozart | opera, symphony, piano-concerto, chamber-music | Melody as effortless architecture; Economy is not austerity |
| `coltrane` | John Coltrane | jazz-standard, bebop, modal-jazz, free-jazz | Technique clears the way for the search; urgency in every note |
| `miles` | Miles Davis | cool-jazz, modal-jazz, jazz-fusion, jazz-standard | What you don't play is what you play; silence is music |
| `sondheim` | Stephen Sondheim | musical-theater, art-song, song-cycle | Every note serves the character; music and lyric are one argument |
| `pärt` | Arvo Pärt | minimalism, sacred-music, tintinnabuli | One sustained note contains what a hundred scattered notes lose |
| `ellington` | Duke Ellington | jazz-orchestra, swing, blues, jazz-composition | The orchestra is specific voices; write for Cootie Williams, not "the trumpet" |
| `mingus` | Charles Mingus | jazz-composition, blues, jazz-standard, avant-garde | The blues is a truth about what it costs to be alive |
| `bernstein` | Leonard Bernstein | symphony, musical-theater, conducting, music-theory | Music's meaning is inseparable from its form; you cannot paraphrase a symphony |

## Review Lenses

Five cross-cutting perspectives in `personas/lenses/`:

- `music-theorist` — formal analysis, voice leading, harmonic function, counterpoint, motivic development
- `performer` — is this playable/singable? do the technical demands produce musical meaning?
- `listener` — the naive auditory experience without theoretical knowledge
- `historian` — tradition, context, influence, precedent
- `producer-engineer` — (for recorded music) how does sonic production serve the composition?

A standard panel invokes 3 personas (chosen by tradition alignment) + 2 lenses.

## File Naming Conventions

- Works: `works/NNNN-<slug>/` — numbered, kebab-case slug
- Traditions: `traditions/<slug>.md`
- Personas: `personas/<slug>.md`
- Lenses: `personas/lenses/<slug>.md`
- Skills: `.claude/skills/score-<name>/SKILL.md`
- Handoffs: `docs/handoff/YYYY-MM-DD-<slug>.md`

## Frontmatter Contract

Every generated file opens with YAML frontmatter:

```yaml
---
work: NNNN-slug          # for work artifacts; omit for non-work files
stage: brief|composition|description|panel|handoff
tradition: tradition-slug
author: persona-slug (or 'human')
rubric_version: v1.3
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: []
---
```

## Session Resume Protocol

1. Read latest `docs/handoff/YYYY-MM-DD-<slug>.md` (most recent file in `docs/handoff/`)
2. Confirm rubric version via `scoring/RUBRIC.md` header
3. Report in one sentence: rubric version + most recent work + top priority
4. Do NOT re-read full CLAUDE.md or TRACKER unless instructed

## Current State

- **Rubric version:** v1.3 (active) — 6 dimensions amended across 4 versions; 7 structural types in Step 0; 5 clusters confirmed (A, B, C, D, E); 1 cluster seeded (F — devotional Resonance, needs 1 more work)
- **Works completed:** 16 (0001–0016, all PASS) — 13 canonical + 3 original
- **Score range:** 82.1 (So What, 0002) — 95.1 (Beethoven 5th, 0003)
- **Innovations logged:** 32 (#1–32)
- **Latest handoff:** `docs/handoff/2026-04-25-session-2.md`
- **Top priority:** Confirm Cluster F (devotional Resonance) — candidate: Bach "Erbarme Dich" (St. Matthew Passion)

## Editorial Rules

1. **Tradition first** — every compositional decision traceable to tradition conventions; don't mix tradition grammars without naming the tension
2. **No hierarchy of traditions** — a jazz standard is not simpler than a symphony; a folk song is not less demanding than a fugue; a blues is not less rigorous than a sonata; each tradition has its own exacting standards and its own ways of failing
3. **Personas disagree** — Bach and Coltrane will rarely agree on Economy; Miles Davis and Sondheim will differ on Originality; Pärt and Beethoven will not agree on what Structure requires; that friction is the point
4. **Innovation over repetition** — a panel that finds no new structural technique has not looked hard enough
5. **Forward-only rubric** — rubric amendments apply to works created after ratification; never retroactively re-score completed works
