# Skill: score-innovation

**Pipeline position:** Stage 3b — after panel, before handoff  
**Rubric version:** v1.0 — SCORE  
**Produces:** entries in `scoring/INNOVATIONS.md`

---

## Purpose

Log structural innovations identified during panel sessions. An innovation is a technique the work deploys, or a rubric gap the work exposes, that the current SCORE rubric does not yet name. Innovations are the raw material for rubric amendments. When two or more innovations point at the same gap across two or more works, a cluster is named and an amendment is triggered.

Logging innovations is not optional. A panel that identifies no innovations has not looked hard enough. The rubric is not complete; it is the current best description of what good music does. Every work reveals something the rubric has not yet named.

## Preconditions

- Panel reviews exist in `works/NNNN-slug/panel/`
- Innovations have been flagged in individual reviewer files or in the SUMMARY

## Procedure

1. **Read the SUMMARY and individual panel files** to collect all innovations flagged.

2. **Format each innovation:**

   `WORK:REVIEWER — TECHNIQUE NAME — SCORE DIMENSION — IMPLICATION`

   - `WORK` — the work number and slug (e.g., `0001-bach-well-tempered`)
   - `REVIEWER` — the persona or lens slug (e.g., `bach`, `music-theorist`)
   - `TECHNIQUE NAME` — a short, specific name for the technique or gap (3-7 words)
   - `SCORE DIMENSION` — which SCORE dimension this innovation touches (Structure, Craft, Originality, Resonance, Economy) — or "cross-dimensional" if it spans multiple
   - `IMPLICATION` — one to three sentences explaining what the technique does, why it matters, and what rubric gap it exposes

3. **Check for clusters.** After logging, scan `scoring/INNOVATIONS.md` for patterns:
   - Do 2+ recent innovations point at the same rubric gap?
   - Are innovations from 2+ different works?
   - If both conditions are met: name the cluster. Flag in the SUMMARY and note cluster candidate status.

4. **Append to `scoring/INNOVATIONS.md`** under the current date and work heading. Do not edit previous entries; append only.

5. **Update TRACKER.md** with the new innovation count.

## Output Format

Entries are appended to `scoring/INNOVATIONS.md` under the date heading:

```markdown
## YYYY-MM-DD — Work NNNN: [Title]

| # | Work:Reviewer | Technique Name | SCORE Dimension | Implication |
|---|---------------|----------------|-----------------|-------------|
| N | 0001-slug:persona | [Technique Name] | Structure | [1-3 sentence implication] |
| N+1 | 0001-slug:lens | [Technique Name] | Economy | [1-3 sentence implication] |
```

## Cluster Naming Convention

Clusters are named alphabetically (Cluster A, Cluster B, ...) in order of formation. A cluster requires:
- 2+ innovations pointing at the same rubric gap
- Those innovations coming from 2+ different works

A single innovation from a single work is a candidate; it needs confirmation before becoming a cluster.

## Examples of Innovation Types

- A tradition-specific scoring convention not yet in the rubric (e.g., the correct Economy standard for minimalist repetition, which is not the same as the Economy standard for developmental forms)
- A technique that spans multiple SCORE dimensions in a way the rubric doesn't account for (e.g., a harmonic substitution that is simultaneously a Craft decision, a Structure decision, and an Originality marker)
- A cross-tradition technique that the rubric's tradition-specific language doesn't capture
- A gap in the anchor language — a scoring level that produces ambiguity because the anchors don't distinguish between two clearly different quality levels

## Example Invocation

`/score-innovation 0001-bach-well-tempered` — extracts innovations from the 0001 panel, formats them, appends to INNOVATIONS.md, checks for clusters.
