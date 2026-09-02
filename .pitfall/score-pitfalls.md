# SCORE Pitfalls

## SCORE-PF-01: Late Work Outruns The Ledger

**Status:** MITIGATED

**Pattern:** New work artifacts, cluster confirmations, or innovation IDs are created without updating `TRACKER.md`, `CLAUDE.md`, `scoring/INNOVATIONS.md`, and the rubric amendment history together.

**Actor:** Maintainer, panel runner, handoff author, portfolio agent, research-paper author, or future SCORE contributor.

**Task:** Add or summarize a work, log innovations, confirm a cluster, update public status, or resume from handoff docs.

**Surface:** Works 0017-0018, cluster F, innovation IDs #33-34, handoff docs, README status, and future rubric v1.4 work.

**Likely mistake:** Treat 0017 as fully ledger-reconciled or 0018 as complete because work artifacts and panel drafts exist.

**Consequence:** Agents reuse innovation IDs, skip the v1.4 rubric reconciliation, or publish a false completed-work count.

**Owner:** SCORE maintainers, with Rubric Steward review before changing innovation or amendment history.

**Domain:** Works 0017-0018, cluster F, innovation IDs #33-34, handoff docs, README status, and future rubric v1.4 work.

**Detection difficulty:** A repo can look active and useful while its status docs send agents toward already-finished work or reuse innovation IDs.

**Structural solution:** Reconcile 0017 Cluster F and #33-34 into the
innovation ledger and v1.4 rubric plan, then either complete 0018 with a
retained summary or explicitly park it as draft; until then, keep the
unreconciled/draft boundary machine-readable and test-backed.

**Evidence:** `docs/pitfall-boundaries.v1.json`; PITFALL adoption updated
`README.md`, `CLAUDE.md`, and `TRACKER.md`;
`works/0017-bach-erbarme-dich/panel/SUMMARY.md`;
`works/0018-johnson-cross-road-blues/`; `scoring/INNOVATIONS.md`; and
`tests/check-pitfall-policy.ps1`.

**Test:** `pwsh -NoProfile -File tests\check-pitfall-policy.ps1`.

## SCORE-PF-02: Retained Checker Accepts Only The First Summary Shape

**Status:** MITIGATED

**Pattern:** `tools/check-score-summary.ps1` validates the earliest summary table format while later complete works use valid but different retained summary shapes.

**Domain:** `tools/check-score-summary.ps1`, `tests/check-proof.ps1`, and retained summaries under `works/*/panel/SUMMARY.md`.

**Detection difficulty:** The advertised proof passed because it checked one canonical panel and one invalid fixture, not the whole retained corpus.

**Structural solution:** Parse the repo's actual retained summary formats and make the proof script check every existing `SUMMARY.md` while preserving invalid-fixture rejection.

**Evidence:** PITFALL adoption updated `tools/check-score-summary.ps1` and `tests/check-proof.ps1`; `pwsh -NoProfile -File tests\check-proof.ps1` passes.

## SCORE-PF-03: Rubric Amendments Rescore History Silently

**Status:** MITIGATED

**Pattern:** New rubric vocabulary changes how older works would score, and docs imply historical scores should shift without a named rescore batch.

**Domain:** `scoring/RUBRIC.md`, `scoring/INNOVATIONS.md`, `TRACKER.md`, work summaries, and handoff docs.

**Detection difficulty:** Later rubric notes make old scores look outdated even when they were correct under their original rubric version.

**Structural solution:** Keep forward-only amendment rules explicit and require any retrospective score change to be a declared rescore batch.

**Evidence:** `scoring/RUBRIC.md`, `.roles/parliament/rubric-steward.md`, `CLAUDE.md`, and work frontmatter `rubric_version` fields.

## SCORE-PF-04: Persona Authority Becomes Music Authority

**Status:** MITIGATED

**Pattern:** Persona panels, weighted scores, or role reviews are presented as definitive musicological, historical, licensing, or canonical authority.

**Actor:** Maintainer, public explainer, customer-facing writer, panel summarizer, research-paper author, or future agent.

**Task:** Explain a score, cite a composer persona, publish a work description, summarize a canonical import, or reuse SCORE as a music-analysis method.

**Surface:** README claims, work descriptions, persona reviews, public explanations, and any customer-facing reuse of SCORE analysis.

**Likely mistake:** Treat composer-persona prose or weighted SCORE results as final musicological, historical, licensing, or canonical authority.

**Consequence:** SCORE overclaims expertise or rights and makes downstream readers trust a rubric-bounded analysis artifact more than source evidence or rights terms.

**Owner:** SCORE maintainers, with Rubric Steward and role review before public score or authority claims.

**Domain:** README claims, work descriptions, persona reviews, public explanations, and any customer-facing reuse of SCORE analysis.

**Detection difficulty:** Persona prose can sound authoritative even when it is a structured analytic device.

**Structural solution:** Keep SCORE claims framed as rubric-bounded analysis,
and preserve third-party source and rights boundaries in public surfaces, role
routing, and the machine-readable boundary manifest.

**Evidence:** `docs/pitfall-boundaries.v1.json`, `README.md`, `LICENSE`,
`.roles/ROLE.md`, `works/*/panel/*.md`, `works/*/work-description.md`, and
`tests/check-pitfall-policy.ps1`.

**Test:** `pwsh -NoProfile -File tests\check-pitfall-policy.ps1`.

## SCORE-PF-05: Tradition-Specific Craft Collapses Into A Hierarchy

**Status:** MITIGATED

**Pattern:** Non-Western, blues, jazz, improvised, or production-first works are scored lower because their craft vocabulary does not look like Western notation, harmony, or counterpoint.

**Domain:** Craft scoring, Step 0 structural approach, non-Western Craft vocabulary, Delta blues, raga, jazz improvisation, and future electronic/production-first works.

**Detection difficulty:** The bias can hide inside apparently technical comments.

**Structural solution:** Require reviewers to name the tradition's own Craft criteria before scoring.

**Evidence:** `scoring/RUBRIC.md`, `works/0015-shankar-raga-yaman/panel/SUMMARY.md`, and `works/0018-johnson-cross-road-blues/brief.md`.

## SCORE-PF-06: Panel Summary Becomes Composition Or Rubric Command

**Status:** MITIGATED

**Pattern:** A user treats a panel `SUMMARY.md`, weighted score, PASS label,
innovation cluster, tradition note, or handoff as a direct command to change a
composition, ratify a rubric amendment, rescore earlier works, or make a public
music authority claim.

**Actor:** Composer, panel runner, rubric editor, maintainer, customer-facing music-analysis consumer, research-paper author, or future agent.

**Task:** Decide whether to revise a composition, document a tradition, ratify an amendment, rescore an older work, publish a score, retain dissent, or take no action.

**Surface:** Panel summaries, `score-innovation`, `score-amendment`,
`score-handoff`, tradition documentation, rescore batches, work descriptions,
and customer-facing music-analysis reuse.

**Likely mistake:** Treat a decisive musical diagnosis as an authorized command instead of selecting the right SCORE workflow and authority boundary.

**Consequence:** Users silently rescore history, ratify rubric language without cluster evidence, overwrite dissent, revise the wrong artifact, or publish an unsupported music-authority claim.

**Owner:** SCORE maintainers, with Composition Craft Auditor, Listener Response Reviewer, and Rubric Steward review according to the follow-up.

**Domain:** Panel summaries, `score-innovation`, `score-amendment`,
`score-handoff`, tradition documentation, rescore batches, work descriptions,
and customer-facing music-analysis reuse.

**Detection difficulty:** SCORE panels intentionally produce specific musical
diagnosis, but the output can blur whether the next safe action is composition
revision, tradition documentation, forward-only rubric amendment, named rescore,
dissent retention, or no action.

**Structural solution:** Music review outputs should show artifact status,
allowed next workflow, tradition scope, amendment/rescore eligibility, dissent
status, source-rights boundary, and safe handoff path together, with role
routing before summaries become commands.

**Evidence:** `docs/pitfall-boundaries.v1.json`, `README.md`, `CLAUDE.md`,
`TRACKER.md`, `scoring/RUBRIC.md`, `.roles/ROLE.md`,
`works/*/panel/SUMMARY.md`, and `tests/check-pitfall-policy.ps1`.

**Test:** `pwsh -NoProfile -File tests\check-pitfall-policy.ps1`.
