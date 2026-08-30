# Pulse 01 - PITFALL Use-Case Integration

Date: 2026-08-30

## Scope

Second-pass PITFALL integration for SCORE, focused on user-mode failures:

- `SCORE-PF-01` - late work outruns the ledger
- `SCORE-PF-04` - persona authority becomes music authority
- `SCORE-PF-06` - panel summary becomes composition or rubric command

## Changes

- Added actor, task, surface, likely mistake, consequence, owner, and retained
  test fields to the three open PITFALL entries.
- Added `tests/check-pitfall-policy.ps1` so ledger, authority, rights, and
  summary-to-action boundaries are test-cited and visible to portfolio metrics.
- Tightened README and pipeline language so review panels remain
  rubric-bounded analysis and panel summaries route users to explicit SCORE
  workflows.

## Validation

Run before commit:

```powershell
pwsh -NoProfile -File tests\check-proof.ps1
pwsh -NoProfile -File tests\check-pitfall-policy.ps1
C:\Users\giodl\.cargo\bin\cargo.exe run --manifest-path C:\src\TRACKER\repos\standards-protocols\pitfall\Cargo.toml -q -p pitfall-cli -- C:\src\TRACKER\repos\design-labs\score --format json
python C:\src\TRACKER\repos\standards-protocols\pitfall\tools\check_pitfall.py C:\src\TRACKER\repos\design-labs\score
git diff --check
```
