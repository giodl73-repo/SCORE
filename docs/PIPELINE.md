# SCORE Pipeline

```
BRIEF → [TRADITION] → COMPOSITION/DESCRIPTION → PANEL → [INNOVATION] → [AMENDMENT] → HANDOFF
  ↑                                                  |
  └──── revise brief or composition ────────────────┘
        (if gate ADVISORY or FAIL)
```

## Stages

| Stage | Skill | Output | Gate |
|-------|-------|--------|------|
| 1. Brief | `score-brief` | `works/NNNN-slug/brief.md` | Core musical aim stated in one sentence? |
| 1b. Tradition | `score-tradition` | `traditions/<slug>.md` | Tradition grammar documented? |
| 2. Composition | `score-compose` | `works/NNNN-slug/composition.md` | Composition matches brief? |
| 2b. Canonical Import | `score-analyze` | `works/NNNN-slug/brief.md` + `work-description.md` | Work described accurately? |
| 3. Panel | `score-panel` | `works/NNNN-slug/panel/` | Score ≥ 60? |
| 3b. Innovation | `score-innovation` | entries in `scoring/INNOVATIONS.md` | Cluster formed? |
| 3c. Amendment | `score-amendment` | updated `scoring/RUBRIC.md` | 2+ works, 2+ innovations? |
| 4. Handoff | `score-handoff` | `docs/handoff/YYYY-MM-DD-*.md` | Always |

## Gate Thresholds

- **PASS**: aggregate score ≥ 60 — work is complete
- **ADVISORY**: 50–59 — work is provisionally complete with identified weaknesses; composer may proceed or revise
- **FAIL**: < 50 — work requires revision before archiving

The advisory threshold is not a failure. An advisory score on a canonical import means the rubric has found something important to say about a significant work; the work does not need revision, but the finding is recorded. An advisory score on an original composition means the composition needs structural attention before it can be considered complete.

## Two-Track Entry

The pipeline has two entry points:

**Track A — Original Composition**: `score-brief` → `score-tradition` (if needed) → `score-compose` → `score-panel`

**Track B — Canonical Import**: `score-analyze` → `score-panel`

Both tracks converge at the panel. Both tracks log innovations. Both tracks contribute to cluster formation and rubric amendment.

## Tradition Documentation

Tradition documentation is required before composing in a new tradition, but not before reviewing a canonical import in that tradition. When reviewing a canonical import, the tradition document may be written concurrently with the panel — the review itself contributes to understanding the tradition's grammar.

## The Revision Loop

If gate ADVISORY or FAIL on an original composition:
1. Read panel SUMMARY for specific recommendations
2. Revise `composition.md` (or `brief.md` if the problem is upstream of the composition)
3. Run panel again (increment review round: R1, R2, ...)
4. Gate applies to the revised composition; prior round is archived

## Innovation and Amendment

Innovations are logged after every panel. Clusters are checked after every innovation batch. Amendments are ratified immediately when a cluster is confirmed — they do not wait for end-of-session. The rubric version in the active work's frontmatter reflects the version at time of panel, not at time of composition.

A panel summary is not itself permission to publish, amend, rescore, revise a
composition, or redistribute source material. Use `score-amendment` only after
the cluster threshold is met, use a named rescore batch before changing a
completed score, and check source-rights boundaries before packaging canonical
examples or public excerpts.

## The Unit-of-Work Question

SCORE reviews three types of object:

- **Composition**: the original notes — the score, the chord chart, the specification. Assessed as written.
- **Performance**: a specific realization of the composition by specific performers. Assessed as performed.
- **Recording**: a fixed sonic artifact that combines composition and performance with production choices. Assessed as recorded.

For most SCORE work, the unit of review is either the composition (for original work and classical canonical imports) or the recording (for jazz and popular music canonical imports, where the recording is the work). The panel should identify which unit it is assessing and apply the appropriate lens accordingly. The `producer-engineer` lens is relevant only when the recording is the unit of assessment.

## Handoff

Every session ends with a handoff. The handoff is not optional. Without a handoff, the next session cannot be resumed without re-reading the full project. The handoff is what makes forward-only work possible across many sessions.
