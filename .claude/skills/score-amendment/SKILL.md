# Skill: score-amendment

**Pipeline position:** Stage 3c — after cluster formation  
**Rubric version:** current (bumps on ratification)  
**Produces:** updated `scoring/RUBRIC.md`, updated `TRACKER.md`

---

## Purpose

Ratify a rubric amendment from a confirmed innovation cluster. Amendments are the mechanism by which the SCORE rubric evolves: not by theoretical revision or committee decision, but from patterns observed in actual panel sessions. When enough reviewers, assessing enough works, identify the same gap, the rubric must address it.

Amendments apply forward-only. Works already reviewed are not rescored unless a named rescore batch is declared (which requires explicit justification and tracking).

## Preconditions

- A cluster has been identified in `scoring/INNOVATIONS.md`: 2+ innovations pointing at the same rubric gap, from 2+ different works
- The cluster's amendment has been proposed (in INNOVATIONS.md or the relevant SUMMARY)
- No amendment is ratified from a single-work cluster; confirmation is required

## Procedure

1. **Read the cluster.** Identify all innovations in the cluster, the works they came from, and the reviewers who flagged them. The cluster should point clearly at a single rubric gap — a scoring convention missing, an anchor that doesn't account for a real phenomenon, a dimension that conflates two things that should be separated.

2. **Draft the amendment.** State clearly:
   - Which dimension is affected (Structure, Craft, Originality, Resonance, Economy)
   - What change is being made (new anchor language, new modifier, new scoring note, clarification of existing text)
   - Why the cluster justifies this change
   - What works are confirmed as the basis for the cluster

3. **Check the amendment is forward-only.** The amendment must not change the retrospective meaning of scores already given. If the amendment would change how an existing work would be scored, note this explicitly — the existing score stands; the amendment applies from here forward.

4. **Update `scoring/RUBRIC.md`:**
   - Bump the version number (v1.0 → v1.1)
   - Update the header with the amendment summary
   - Add the amendment text in the appropriate dimension section
   - Update the Amendment History table at the bottom

5. **Update `TRACKER.md`:**
   - Update the rubric version line
   - Add the amendment to the Amendment History table

6. **Update `scoring/INNOVATIONS.md`:**
   - Mark the cluster as CONFIRMED and adopted
   - Note the version it was adopted into

## Amendment History Table Format

Both `scoring/RUBRIC.md` and `TRACKER.md` maintain the same history table:

```markdown
| Version | Date | Trigger | Change |
|---------|------|---------|--------|
| v1.0 | 2026-04-23 | Initial | Five-dimension 100-point rubric seeded |
| v1.1 | YYYY-MM-DD | Cluster A ([N] innovations, works NNNN + NNNN) | [Short description of the change] |
```

## Versioning Rules

- Patch (v1.0 → v1.1): adds or clarifies language within a dimension; no change to point totals or dimension weights
- Minor (v1.0 → v2.0): restructures a dimension, changes the point allocation, or adds a new dimension; requires explicit justification
- No retroactive changes to scores from prior versions

## Common Amendment Types

Based on the PROSE experience, likely amendment types for SCORE include:
- Tradition-specific Economy standards (jazz Economy is not the same as fugue Economy; minimalist Economy is not the same as symphonic Economy)
- Tradition-specific Craft standards (voice leading rules differ across traditions)
- Cross-tradition Originality calibration (how to score a work that synthesizes multiple traditions)
- Structural mode classification (analogous to PROSE's Organization mode classification — different traditions have different formal grammars that require different scoring approaches)
- Resonance calibration for specific emotional registers (spiritual resonance, political resonance, dance resonance)

## Example Invocation

`/score-amendment cluster-a` — reviews Cluster A, drafts the amendment, updates RUBRIC.md and TRACKER.md, marks the cluster as adopted in INNOVATIONS.md.
