param([Parameter(Mandatory)][string]$Path)

try {
    $lines = Get-Content $Path -ErrorAction Stop
} catch {
    Write-Output "ERROR cannot read summary: $Path"
    exit 2
}

$maxima = @{ Structure = 25; Craft = 25; Originality = 15; Resonance = 15; Economy = 20 }
$found = @{}
$scores = @{}
$errors = [System.Collections.Generic.List[string]]::new()
foreach ($line in $lines) {
    if ($line -match '^\|\s*(Structure|Craft|Originality|Resonance|Economy)\s*\|\s*\*\*([0-9]+(?:\.[0-9]+)?)\*\*\s*\|\s*([0-9]+)\s*\|') {
        $dimension = $Matches[1]
        $score = [double]$Matches[2]
        $maximum = [int]$Matches[3]
        $found[$dimension] = $true
        $scores[$dimension] = $score
        if ($maximum -ne $maxima[$dimension] -or $score -lt 0 -or $score -gt $maximum) {
            $errors.Add("invalid weighted dimension: $dimension")
        }
    }
}
foreach ($dimension in $maxima.Keys) {
    if (-not $found[$dimension]) { $errors.Add("missing weighted dimension: $dimension") }
}

$text = $lines -join "`n"
if ($text -notmatch '(?m)^\|\s*\*\*Aggregate Total\*\*\s*\|\s*\*\*([0-9]+(?:\.[0-9]+)?)\*\*') {
    $errors.Add("missing aggregate total")
} else {
    $total = [double]$Matches[1]
    if ($total -lt 0 -or $total -gt 100) { $errors.Add("aggregate total must be between 0 and 100") }
    if ($found.Count -eq $maxima.Count) {
        $dimensionTotal = ($scores.Values | Measure-Object -Sum).Sum
        if ([Math]::Abs($dimensionTotal - $total) -gt 0.11) {
            $errors.Add("aggregate total does not match weighted dimensions")
        }
    }
}
if ($text -notmatch '(?m)^\*\*Gate:\s*(PASS|ADVISORY)\*\*$') {
    $errors.Add("missing structured gate status")
} elseif (($total -ge 60 -and $Matches[1] -ne "PASS") -or ($total -lt 60 -and $Matches[1] -ne "ADVISORY")) {
    $errors.Add("gate status does not match the 60-point threshold")
}

if ($errors.Count) {
    $errors | Sort-Object | ForEach-Object { Write-Output "ERROR $_" }
    exit 2
}
Write-Output "OK $Path"
