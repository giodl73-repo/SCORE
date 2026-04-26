---
created: 2026-04-25
type: design-specification
version: 1.0
---

# SCORE Design Specification

*Music Design Lab — initial specification*

---

## 1. Mission

SCORE is a framework for studying and evaluating musical works across the full spectrum of traditions — from Baroque counterpoint to jazz improvisation, from minimal repetition to orchestral drama, from the twelve-bar blues to the raga. Its purpose is not to produce music as an end in itself, but to understand how music works — how different traditions organize sound, how different voices produce different effects in different listeners, how the same musical material can be handled with more or less structural intelligence, craft, originality, resonance, and economy.

We learn how musical traditions work by working through them. We analyze canonical works. We evaluate original compositions. We evolve our understanding through practice and revision.

The studio is named SCORE after the rubric at its centre. A score is what music is written as — the notation that allows a composer's conception to be realized by performers at any distance in space or time. SCORE is how it is evaluated. The rubric is SCORE: **S**tructure, **C**raft, **O**riginality, **R**esonance, **E**conomy. Every work of music can be examined through these five dimensions, whether it is a Bach fugue, a Coltrane improvisation, a twelve-bar blues, a film score, or a raga performance.

SCORE is the third member of a family: ASPECT (visualization, C:\src\degas) and PROSE (writing, C:\src\prose). Same methodology — rubric-driven, persona-reviewed, innovation-tracked, forward-only. Different medium.

---

## 2. Architecture

### 2.1 The Rubric

SCORE v1.0 has five dimensions totaling 100 points:

| Dimension | Points | Core question |
|-----------|--------|---------------|
| Structure | 25 | Does the architecture serve the music? Does the form hold? Is the sequence inevitable? |
| Craft | 25 | Are the technical choices — harmony, voice leading, rhythm, texture, orchestration — precisely made? |
| Originality | 15 | Does the work say something within its tradition that hasn't been said this way? |
| Resonance | 15 | Does it create the intended effect in the listener? |
| Economy | 20 | Does every note earn its place? |

Structure and Craft receive the most points because they are the dimensions that most often determine whether a work succeeds or fails at the level of compositional intelligence. Originality and Resonance receive fewer points not because they matter less — a work that says nothing new or produces no effect has failed fundamentally — but because they are harder to assess at a fine-grained scale.

**Advisory threshold: < 60. Binding threshold: 60+.**

The rubric is forward-only. Amendments are ratified from clustered innovations (2+ across 2+ works). Earlier works are not rescored retroactively.

### 2.2 The Works

Works live in `works/NNNN-slug/`. Each work has:
- A brief (`brief.md`) — the assignment or review contract
- A composition or work description (`composition.md` or `work-description.md`)
- A panel directory (`panel/`) — one file per reviewer, plus SUMMARY

Works are numbered sequentially. The slug is 2-4 words from the composer and title, kebab-case.

Two types of works:
- **Original compositions** — new works specified in response to a brief
- **Canonical imports** — existing published works reviewed against the rubric

Both types follow the same panel process and contribute equally to innovation logging and rubric development.

### 2.3 The Traditions

Traditions are the musical forms and styles with their own grammars — fugue, jazz-standard, blues, classical-sonata, and so on. Traditions are documented in `traditions/<slug>.md`.

Traditions are not a hierarchy. A jazz standard is not simpler than a symphony. A folk song is not less demanding than a fugue. Each tradition has its own standards, its own forbidden moves, its own ways of succeeding and failing.

**Thirteen traditions in the initial living list:**
`classical-sonata`, `fugue`, `jazz-standard`, `blues`, `song-cycle`, `minimalism`, `symphony`, `musical-theater`, `raga`, `electronic`, `folk-song`, `art-song`, `chamber-music`

### 2.4 The Personas

Ten historical composers and musician-critics serve as founding reviewers. Each embodies one or more traditions, has signature techniques, and voices panel reviews from their own intellectual stance. Personas disagree by design.

| Persona | Traditions | Signature stance |
|---------|-----------|-----------------|
| Johann Sebastian Bach | fugue, chorale, suite, concerto | Counterpoint as moral geometry; no note without purpose |
| Ludwig van Beethoven | symphony, string-quartet, piano-sonata | Form as the capacity to surprise itself; development as transformation |
| Wolfgang Amadeus Mozart | opera, symphony, piano-concerto, chamber-music | Melody as effortless architecture; economy is not austerity |
| John Coltrane | jazz-standard, bebop, modal-jazz, free-jazz | Technique clears the way for the search; urgency in every note |
| Miles Davis | cool-jazz, modal-jazz, jazz-fusion, jazz-standard | What you don't play is what you play; silence is music |
| Stephen Sondheim | musical-theater, art-song, song-cycle | Every note serves the character; music and lyric are one argument |
| Arvo Pärt | minimalism, sacred-music, tintinnabuli | One note, sustained, contains what a hundred notes scattered lose |
| Duke Ellington | jazz-orchestra, swing, blues, jazz-composition | The orchestra is specific voices; write for Cootie Williams |
| Charles Mingus | jazz-composition, blues, jazz-standard, avant-garde | The blues is a truth about what it costs to be alive |
| Leonard Bernstein | symphony, musical-theater, conducting, music-theory | Music's meaning is inseparable from its form; you cannot paraphrase a symphony |

### 2.5 The Lenses

Five cross-cutting analytical perspectives, applied to any tradition:

| Lens | Focus |
|------|-------|
| Music Theorist | Formal analysis, voice leading, harmonic function, counterpoint |
| Performer | Performability, notation clarity, technical demands vs. musical result |
| Listener | Naive auditory experience; first-hearing reception, attention, memory |
| Historian | Tradition placement, precedent, influence, contribution |
| Producer/Engineer | Sonic production (recorded music); mix, mastering, production-composition alignment |

A standard panel invokes 3 personas + 2 lenses. The five-reviewer format ensures that no single analytical perspective dominates the assessment.

---

## 3. The Unit-of-Work Question

The most fundamental question in music evaluation is: what, exactly, is being evaluated? SCORE recognizes three distinct units:

**Composition**: the notes as written — the score, the chord chart, the specification. The composition can be evaluated by anyone who can read it, regardless of whether it has been performed. For classical music, the composition is the primary object; the performance is a realization.

**Performance**: a specific realization of the composition by specific performers at a specific time. Two performances of the same composition may be evaluated very differently. For jazz and much improvised music, the performance IS the composition — the improvisation is not a realization of a pre-existing work but the work itself, created in real time.

**Recording**: a fixed sonic artifact that combines composition and performance with production decisions. In recorded music traditions (jazz, popular music, electronic music), the recording is often the canonical form — Charlie Parker's "Ko-Ko" exists as a recording; the sheet music is a transcription of the recording, not the primary document.

The distinction matters for the panel:
- When assessing a notated composition, the `performer` lens is forward-looking (can this be performed?) rather than retrospective.
- When assessing a recording, the `producer-engineer` lens applies.
- When assessing a performance or improvisation, the `music-theorist` lens must work from description rather than score.

For each work, the panel should identify which unit is being assessed and apply the rubric to that unit.

---

## 4. The Personas and Disagreement

The ten personas were selected for maximum productive disagreement across the SCORE dimensions. Key fault lines:

**Economy:** Bach, Mozart, and Pärt will enforce Economy with maximum severity, from three different directions (counterpoint economy, melodic economy, and subtractive economy respectively). Beethoven will accept more material if it serves the development. Ellington and Bernstein will accept orchestral richness that the more austere personas would cut. Miles Davis's silence standard is the most radical Economy position on the panel.

**Originality:** Coltrane and Mingus will score Originality most severely, demanding that the work say something that has not been said. Bach and Mozart will accept high Originality scores for works that achieve excellence within their traditions, without requiring novelty. Bernstein will reward synthesis across traditions as a form of originality.

**Resonance:** Pärt will assess Resonance in terms of spiritual effect. Sondheim will assess it in terms of dramatic function. Miles Davis will assess it in terms of emotional temperature and the quality of silence. Mingus will ask whether the music demands something of the listener. These are four genuinely different standards.

**Structure:** Bach will analyze formal architecture with forensic precision. Beethoven will ask whether the development section truly develops. Sondheim will assess whether the dramatic architecture earns the emotional climax. Pärt will ask whether the structure requires every note that is present.

**Craft:** The craft standards differ most dramatically between classical and jazz traditions. Bach's voice-leading standards are not the standards of jazz; applying them to a Coltrane improvisation would produce a meaningless score. The panel must always assess Craft against the tradition's own grammar.

---

## 5. The Pipeline

The pipeline moves from commission through review to archive, with feedback loops at the panel stage:

```
BRIEF → [TRADITION] → COMPOSITION/DESCRIPTION → PANEL → [INNOVATION] → [AMENDMENT] → HANDOFF
```

**Two entry tracks:**
- Original composition: `score-brief` → `score-tradition` → `score-compose` → `score-panel`
- Canonical import: `score-analyze` → `score-panel`

Both tracks converge at the panel. Both tracks contribute to innovation logging and rubric development. The canonical imports are as valuable as the original compositions — the rubric is tested most severely against works that have already passed the test of time.

---

## 6. The Rubric and Its Evolution

The SCORE rubric begins at v1.0 and evolves through panel work. Every panel session generates potential innovations — techniques the rubric does not yet name, gaps in the anchor language, tradition-specific standards that the general rubric does not address.

Likely first clusters, based on the PROSE experience:

**Tradition-specific Economy standards**: Jazz Economy is not the same as fugue Economy. In fugue, Economy means no voice without contrapuntal purpose. In jazz, Economy means no note without intentional placement (and silence is a note). In minimalism, Economy means the repetition is structural. These distinctions will emerge from the first few panels across different traditions and likely produce the first amendment.

**Improvisation as composition**: The rubric is written as if the work being assessed is a fixed composition. Improvisation — jazz improvisation, raga improvisation, free improvisation — is composition-in-real-time. The Structure and Craft dimensions will need to be calibrated for improvisational forms, where "the architecture serves the music" means something different from what it means in a pre-composed fugue.

**Tradition-specific Originality calibration**: A jazz standard that introduces a new harmonic substitution may score high Originality within the tradition even if it is entirely conventional by classical standards. A symphony that uses jazz harmony may score high Originality by classical standards even if it is derivative by jazz standards. The tradition-relative standard for Originality will need explicit rubric language.

**Cross-tradition synthesis**: Works that are genuinely working across traditions — Bernstein's syntheses, Ellington's extended works, Mingus's political compositions — will stress the rubric's tradition-specific language. A cluster around cross-tradition synthesis is likely to emerge early.

---

## 7. Scope and Direction

**What SCORE is for:**
- Building a rigorous, evolving analytical framework for music across traditions
- Generating panel reviews that reveal what a work is doing through productive disagreement
- Developing tradition documentation that can serve as a reference for future work
- Testing the rubric through canonical imports and original compositions

**What SCORE is not for:**
- Ranking music across traditions (a fugue and a blues are incommensurable; the rubric compares works within their traditions)
- Replacing the experience of music with analysis (the analysis points back to the music)
- Establishing a permanent canonical hierarchy (the rubric evolves; scores from v1.0 are not comparable to scores from v1.5)

**Direction for the first sprint:**
1. Begin with canonical imports across diverse traditions — a Bach fugue (fugue), a Coltrane recording (jazz-standard or modal-jazz), a Sondheim song (musical-theater), a Beethoven sonata movement (classical-sonata) — to calibrate the rubric across the full range of traditions
2. Document traditions as they are encountered in canonical imports
3. Log innovations from every panel session
4. Identify the first cluster and ratify the first amendment before attempting original composition
5. Original compositions should begin with simpler forms (jazz standard, twelve-bar blues, art song) where the tradition grammar is well-established and the composition can be specified with sufficient precision for panel review
