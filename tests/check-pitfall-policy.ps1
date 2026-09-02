param()

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot

function Read-RepoFile {
  param([string]$Path)
  Get-Content -LiteralPath (Join-Path $repoRoot $Path) -Raw
}

function Assert-Contains {
  param(
    [string]$Text,
    [string]$Needle,
    [string]$Label
  )

  if (-not $Text.Contains($Needle)) {
    throw "Missing '$Needle' in $Label."
  }
}

$pitfalls = Read-RepoFile ".pitfall\score-pitfalls.md"
foreach ($id in @("SCORE-PF-01", "SCORE-PF-04", "SCORE-PF-06")) {
  Assert-Contains $pitfalls $id ".pitfall\score-pitfalls.md"
}

foreach ($field in @(
  "**Actor:**",
  "**Task:**",
  "**Surface:**",
  "**Likely mistake:**",
  "**Consequence:**",
  "**Owner:**",
  "tests\check-pitfall-policy.ps1"
)) {
  Assert-Contains $pitfalls $field ".pitfall\score-pitfalls.md"
}
Assert-Contains $pitfalls "MITIGATED" ".pitfall\score-pitfalls.md"

$manifest = Read-RepoFile "docs\pitfall-boundaries.v1.json"
foreach ($needle in @(
  "SCORE-PF-01",
  "SCORE-PF-04",
  "SCORE-PF-06",
  "0017 fully ledger-reconciled",
  "0018 complete",
  "definitive musicological authority",
  "final music authority",
  "panel summary is composition command",
  "summary permits source redistribution",
  "allowed workflow"
)) {
  Assert-Contains $manifest $needle "docs\pitfall-boundaries.v1.json"
}

$tracker = Read-RepoFile "TRACKER.md"
Assert-Contains $tracker "0017 proposes #33-34" "TRACKER.md"
Assert-Contains $tracker "is not reconciled" "TRACKER.md"
Assert-Contains $tracker "0018 in progress without retained summary" "TRACKER.md"

$claude = Read-RepoFile "CLAUDE.md"
Assert-Contains $claude "0018 has draft/panel material but no retained summary yet" "CLAUDE.md"
Assert-Contains $claude "0017 proposes" "CLAUDE.md"
Assert-Contains $claude "the log has not been reconciled yet" "CLAUDE.md"

$readme = Read-RepoFile "README.md"
Assert-Contains $readme "review panels are structured analytic devices, not external musicological, historical, licensing, or canonical authority." "README.md"
Assert-Contains $readme "Third-party material remains under its own terms." "README.md"
Assert-Contains $readme "SCORE analysis files do not transfer custody or redistribution rights" "README.md"
Assert-Contains $readme "The SUMMARY aggregates the scores" "README.md"

$pipeline = Read-RepoFile "docs\PIPELINE.md"
Assert-Contains $pipeline "A panel summary is not itself permission to publish, amend, rescore, revise a" "docs\PIPELINE.md"
Assert-Contains $pipeline "score-amendment" "docs\PIPELINE.md"
Assert-Contains $pipeline "only after" "docs\PIPELINE.md"
Assert-Contains $pipeline "use a named rescore batch before changing a" "docs\PIPELINE.md"
Assert-Contains $pipeline "check source-rights boundaries before packaging canonical" "docs\PIPELINE.md"

$roles = Read-RepoFile ".roles\ROLE.md"
Assert-Contains $roles "Use Composition Craft Auditor for structure, harmony, rhythm, texture, or form." ".roles\ROLE.md"
Assert-Contains $roles "Use Listener Response Reviewer when a piece claims a listener effect." ".roles\ROLE.md"
Assert-Contains $roles "Use Rubric Steward before changing dimensions, weights, or scoring protocol." ".roles\ROLE.md"
Assert-Contains $roles "PITFALL gate routing" ".roles\ROLE.md"
Assert-Contains $roles "ledger-reconciled" ".roles\ROLE.md"
Assert-Contains $roles "final music" ".roles\ROLE.md"
Assert-Contains $roles "skip dissent and workflow selection" ".roles\ROLE.md"

$license = Read-RepoFile "LICENSE"
Assert-Contains $license "Third-party material and dependencies remain subject to their own licenses." "LICENSE"
Assert-Contains $license "Nothing in this notice claims ownership of upstream or third-party content." "LICENSE"

Write-Output "SCORE PITFALL policy passed: SCORE-PF-01, SCORE-PF-04, and SCORE-PF-06 are covered."
