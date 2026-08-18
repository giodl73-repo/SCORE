$checker = Join-Path $PSScriptRoot "..\tools\check-score-summary.ps1"
$acceptedPath = Join-Path $PSScriptRoot "..\works\0001-bach-crab-canon\panel\SUMMARY.md"
$accepted = & pwsh -NoProfile -File $checker $acceptedPath
if ($LASTEXITCODE -ne 0 -or $accepted -notmatch '^OK ') { throw "canonical panel was not accepted" }

$invalidPath = Join-Path $PSScriptRoot "fixtures\invalid-summary.md"
$rejected = & pwsh -NoProfile -File $checker $invalidPath
if ($LASTEXITCODE -ne 2 -or $rejected -notmatch 'missing weighted dimension: Economy') {
    throw "incomplete panel did not produce the expected structured failure"
}
Write-Output "PASS accepted complete panel and rejected incomplete panel"
