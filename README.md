# SCORE

**A music design lab.** Named for the rubric at its centre: every good piece of music earns its Structure, demonstrates its Craft, achieves its Originality, creates its Resonance, and practices Economy.

**S**tructure · **C**raft · **O**riginality · **R**esonance · **E**conomy — five dimensions, 100 points, reviewed by ten historical composer voices.

Claude Code-driven. Markdown-first. The rubric evolves from panel sessions — each work reveals something the rubric has not yet named, and the record of those discoveries is what the rubric becomes.

A sibling to [ASPECT](../degas/) (visualization) and [PROSE](../prose/) (writing). Same methodology. Different medium.

**Review roles:** This repo uses
[ROLES](https://github.com/giodl73-repo/ROLES), the `.roles` convention for
repository-local review panels.

---

## The SCORE Dimensions

| | Dimension | Pts | The question |
|-|-----------|-----|-------------|
| **S** | Structure | 25 | Does the architecture serve the music? Does the form hold? Is the sequence inevitable? |
| **C** | Craft | 25 | Are the technical choices — harmony, voice leading, rhythm, texture, orchestration — precisely made? |
| **O** | Originality | 15 | Does the work say something within its tradition that hasn't been said this way? |
| **R** | Resonance | 15 | Does it create the intended effect in the listener? |
| **E** | Economy | 20 | Does every note earn its place? |

Advisory threshold: < 60. Binding threshold: 60+.

---

## The Ten Personas

Ten historical composers and musician-critics review every work. They were selected because they disagree — about economy, about what form requires, about when silence is music, about what tradition demands and what it permits. That disagreement is the point.

| Persona | Traditions | Signature |
|---------|-----------|-----------|
| **Johann Sebastian Bach** | fugue, chorale, suite, concerto | Counterpoint as moral geometry. Every voice must have complete melodic sense. God is in the mathematics. |
| **Ludwig van Beethoven** | symphony, string-quartet, piano-sonata, classical-sonata | Form is music's capacity to surprise itself. Development transforms. Drama requires resistance. |
| **Wolfgang Amadeus Mozart** | opera, symphony, piano-concerto, chamber-music | Melody is the human voice made abstract. Economy is the appearance of effortlessness over extraordinary craft. |
| **John Coltrane** | jazz-standard, bebop, modal-jazz, free-jazz | The instrument is a vehicle for a search. Technique clears the way for the answer. Every note must be part of a search. |
| **Miles Davis** | cool-jazz, modal-jazz, jazz-fusion, jazz-standard | What you don't play is what you play. The space is the music. One note, placed correctly, says more than twenty. |
| **Stephen Sondheim** | musical-theater, art-song, song-cycle | Every word and every note must serve the character in the moment. Economy is finding the one thing that does everything. |
| **Arvo Pärt** | minimalism, sacred-music, tintinnabuli | Silence is music's most expressive element. One note, sustained in its full duration, contains everything a hundred notes scattered would lose. |
| **Duke Ellington** | jazz-orchestra, swing, blues, jazz-composition | The orchestra is a conversation between specific voices. You don't write for "the trumpet section." You write for Cootie Williams. |
| **Charles Mingus** | jazz-composition, blues, jazz-standard, avant-garde | The blues is not a form — it is a truth about what it costs to be alive. Technique in service of nothing is worse than ignorance. |
| **Leonard Bernstein** | symphony, musical-theater, conducting, music-theory | Music is the only language whose meaning is inseparable from its form. You cannot paraphrase a symphony. |

---

## The Five Lenses

Five cross-cutting analytical perspectives, applied to any tradition:

| Lens | Focus |
|------|-------|
| **Music Theorist** | Formal analysis, voice leading, harmonic function, counterpoint, motivic development |
| **Performer** | Is this playable/singable? Do the technical demands produce musical meaning, or are they obstacles? |
| **Listener** | The naive auditory experience: what does someone hear on first listening? Where does attention wander? What is remembered? |
| **Historian** | Where does this sit in the tradition? What came before it? What does it change? |
| **Producer/Engineer** | For recorded music: does the recording serve the music? Does the mix support or obscure the structural relationships? |

---

## The Traditions

Musical forms with their own grammars, conventions, and ways of failing. The list is living — new traditions are documented when a work requires a vocabulary not yet established.

`classical-sonata` · `fugue` · `jazz-standard` · `blues` · `song-cycle` · `minimalism` · `symphony` · `musical-theater` · `raga` · `electronic` · `folk-song` · `art-song` · `chamber-music`

No tradition is simpler than another. A jazz standard is not less demanding than a symphony. A folk song is not less rigorous than a fugue. A blues is not less sophisticated than a string quartet. Each tradition has its own exacting standards and its own ways of failing.

---

## The Pipeline

```
BRIEF → [TRADITION] → COMPOSITION/DESCRIPTION → PANEL → [INNOVATION] → [AMENDMENT] → HANDOFF
```

Eight skills in [`.claude/skills/`](.claude/skills/):

| Skill | Does |
|-------|------|
| `score-brief` | Define a composition assignment |
| `score-tradition` | Document a tradition's grammar |
| `score-compose` | Generate an original composition specification |
| `score-analyze` | Set up a canonical import for panel review |
| `score-panel` | Run a 3-persona + 2-lens panel review |
| `score-innovation` | Log structural innovations from panel sessions |
| `score-amendment` | Ratify rubric amendments from clustered innovations |
| `score-handoff` | Session wrap and resume point |

---

## How a Panel Works

Three personas are chosen for tradition alignment — a primary (most identified with the work's tradition), a secondary (adjacent or contrasting), a tertiary (covers a dimension the first two may neglect). Two lenses are chosen for the work's concerns.

Each reviewer produces a score table across all five SCORE dimensions, a voiced review in the persona's register, and 1-2 flagged innovations — structural techniques the current rubric does not yet name.

The composer voices and review panels are structured analytic devices, not external musicological, historical, licensing, or canonical authority.

The SUMMARY aggregates the scores (weighted: primary 30%, secondary 25%, tertiary 20%, lens 1 15%, lens 2 10%), surfaces the tensions, logs innovations, checks for cluster formation, and determines gate status.

### Score Table

| Reviewer | Structure /25 | Craft /25 | Originality /15 | Resonance /15 | Economy /20 | Total /100 |
|----------|--------------|-----------|----------------|--------------|-------------|-----------|
| [Primary] | | | | | | |
| [Secondary] | | | | | | |
| [Tertiary] | | | | | | |
| [Lens 1] | | | | | | |
| [Lens 2] | | | | | | |
| **Weighted** | | | | | | |

---

## Repository Layout

```
SCORE/
├── scoring/
│   ├── RUBRIC.md               SCORE v1.3
│   └── INNOVATIONS.md          innovations log, append-only
├── traditions/                 tradition grammar documents
├── personas/                   10 historical composers + 5 lenses
│   └── lenses/                 music-theorist, performer, listener, historian, producer-engineer
├── works/                      works (brief + composition/description + panel/)
├── .claude/skills/             8 pipeline skills
├── docs/
│   ├── PIPELINE.md             pipeline stages and gates
│   ├── STYLE-GUIDE.md          writing in persona voice; about the traditions
│   ├── handoff/                session resume points
│   └── specs/                  design specifications
├── CLAUDE.md                   house rules
└── TRACKER.md                  works log + amendment history
```

---

## Where to Go Next

- **The rubric** — [`scoring/RUBRIC.md`](scoring/RUBRIC.md): all five dimensions, all anchors, the amendment protocol
- **The personas** — [`personas/`](personas/): 10 historical composers with signature techniques and review voices
- **The lenses** — [`personas/lenses/`](personas/lenses/): 5 cross-cutting analytical perspectives
- **The pipeline** — [`docs/PIPELINE.md`](docs/PIPELINE.md): stages, gates, revision loop
- **The style guide** — [`docs/STYLE-GUIDE.md`](docs/STYLE-GUIDE.md): writing in persona voice; about the traditions
- **The design spec** — [`docs/specs/2026-04-25-score-design.md`](docs/specs/2026-04-25-score-design.md): full architecture, the unit-of-work question, scope and direction
- **Current state** — [`TRACKER.md`](TRACKER.md) or [`docs/handoff/`](docs/handoff/) for the session resume point

---

## Status

Rubric v1.3 SCORE · 17 complete works · 10 personas · 8 skills
Score range: 82.1-95.1 · Advisory threshold < 60

## Retained proof

```powershell
pwsh -NoProfile -File tests\check-proof.ps1
pwsh -NoProfile -File tools\check-score-summary.ps1 works\0001-bach-crab-canon\panel\SUMMARY.md
```

The canonical Bach panel is accepted with all five weighted dimensions, a
bounded aggregate, and a structured gate. The retained incomplete fixture is
rejected with `missing weighted dimension: Economy`.

---

*Built in the SCORE music studio. Named for the rubric: every good piece of music earns its Structure, demonstrates its Craft, achieves its Originality, creates its Resonance, and practices Economy. And named for what music is written as — the score that allows a composer's conception to travel across time.*

---

## License

SCORE uses separate licenses for software and content. Source code,
executable scripts, tests, configuration, and ordinary software
documentation are MIT-licensed (copyright Gio Della-Libera). Original
non-software content is licensed CC BY-NC 4.0 (copyright Gio Della-Libera);
commercial use of that content requires separate written permission.
Third-party material remains under its own terms.
SCORE analysis files do not transfer custody or redistribution rights for
underlying third-party music, lyrics, recordings, editions, scores, or source
material.
See [LICENSE](./LICENSE) for the complete notice.
