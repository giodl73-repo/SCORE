# SCORE Invariants

## SCORE-I-01: Five Weighted Dimensions Remain Bounded

**Status:** VERIFIED

**Invariant:** Retained summaries report Structure /25, Craft /25, Originality /15, Resonance /15, Economy /20, and an aggregate bounded by 0-100.

**Why it matters:** SCORE's comparisons and gates depend on stable dimension maxima.

**Evidence:** `scoring/RUBRIC.md`, `tools/check-score-summary.ps1`, and `tests/check-proof.ps1`.

**Test:** `pwsh -NoProfile -File tests\check-proof.ps1`.

## SCORE-I-02: Gate Threshold Is Explicit

**Status:** VERIFIED

**Invariant:** A complete summary reports PASS for aggregate totals at or above 60 and ADVISORY below 60.

**Why it matters:** The gate is a structured decision, not prose mood.

**Evidence:** `README.md`, `scoring/RUBRIC.md`, `tools/check-score-summary.ps1`, and `tests/fixtures/invalid-summary.md`.

**Test:** `pwsh -NoProfile -File tests\check-proof.ps1`.

## SCORE-I-03: Retained Summaries Cover Completed Works

**Status:** PARTIAL

**Invariant:** Complete works should have retained summaries that the checker accepts.

**Why it matters:** A work listed as complete should have machine-checkable panel evidence.

**Evidence:** `works/*/panel/SUMMARY.md`, `TRACKER.md`, and `tests/check-proof.ps1`.

**Test:** `pwsh -NoProfile -File tests\check-proof.ps1`.

## SCORE-I-04: Role Review Owns Rubric And Panel Tensions

**Status:** VERIFIED

**Invariant:** Rubric, scoring, panel, composition, and listener changes have named review roles.

**Why it matters:** Disagreement quality is part of the method, not an afterthought.

**Evidence:** `.roles/ROLE.md`, `.roles/parliament/rubric-steward.md`, `.roles/craft/composition-craft-auditor.md`, and `.roles/audience/listener-response-reviewer.md`.

**Test:** `git diff --check`.

## SCORE-I-05: Work Status Does Not Hide Draft Surfaces

**Status:** PARTIAL

**Invariant:** Draft or in-progress work artifacts are named as unfinished until a retained summary and status record exist.

**Why it matters:** Agents should not treat 0018 panel drafts as a completed, gated work.

**Evidence:** `TRACKER.md`, `CLAUDE.md`, `works/0018-johnson-cross-road-blues/`, and absence of `works/0018-johnson-cross-road-blues/panel/SUMMARY.md`.

**Test:** `pwsh -NoProfile -File tests\check-proof.ps1`.
